local assets = {
 Asset("ANIM", "anim/darkteleporter.zip"),
 Asset("ATLAS", "images/inventoryimages/darkteleporter.xml"),
 Asset("IMAGE", "images/inventoryimages/darkteleporter.tex"),
}

local crsDarkTeleporterDS = nil
if GetModConfigData("crsDarkTeleporterTest", "workshop-523786293") == 1 then
 crsDarkTeleporterDS = "workshop-523786293"
else
 crsDarkTeleporterDS = "crsDarkTeleporterDS"
end

local function crsOnHammered(inst, worker)
 if inst.components.workable then
  inst:RemoveComponent("workable")
 end
 inst.SoundEmitter:PlaySound("dontstarve/common/destroy_wood")
 inst.AnimState:PlayAnimation("destroyed")
 inst:DoTaskInTime(0.5, function()
  inst:Remove()
 end)
end

local function fn(Sim)

 local inst = CreateEntity()

 inst.entity:AddTransform()
 
 inst.entity:AddAnimState()
 inst.AnimState:SetBank("darkteleporter")
 inst.AnimState:SetBuild("darkteleporter")
 inst.AnimState:PlayAnimation("idle", true)
 
 inst.entity:AddSoundEmitter()
 
 inst:AddTag("crsDarkTeleporter")
 
 local minimap = inst.entity:AddMiniMapEntity()
 minimap:SetIcon("darkteleporter.tex")

 inst:AddComponent("inspectable")
 
 inst:AddComponent("lootdropper")

 inst:AddComponent("workable")
 inst.components.workable:SetWorkAction(ACTIONS.HAMMER)
 inst.components.workable:SetWorkLeft(6)
 inst.components.workable:SetOnFinishCallback(crsOnHammered)
 
 inst:AddComponent("playerprox")
 inst.components.playerprox:SetDist(GetModConfigData("crsDarkTeleRadius", crsDarkTeleporterDS), 1)
 inst.components.playerprox.onnear = function()
  local crsFindTeleporter = FindEntity(inst, GetModConfigData("crsDarkTeleRange", crsDarkTeleporterDS), function(crsTeleporter) 
  return crsTeleporter:HasTag("crsDarkTeleporter")
  end)
  local crsItem = GetPlayer().components.inventory:GetEquippedItem(EQUIPSLOTS.HANDS)
  local crsHammer = (crsItem and crsItem.name == "Hammer")
  if crsFindTeleporter and crsFindTeleporter ~= inst and not crsFindTeleporter:HasTag("crsJustUsed") and not inst:HasTag("crsJustUsed") then
   if not crsHammer then 
    inst:AddTag("crsJustUsed")
    crsFindTeleporter:AddTag("crsJustUsed")
    local target = crsFindTeleporter:GetPosition()
    local fx = SpawnPrefab("small_puff")
    local gamble = math.random(GetModConfigData("crsDarkTeleDmgPenaltyOnUse", crsDarkTeleporterDS))
    inst.SoundEmitter:PlaySound("dontstarve/common/staffteleport")
    GetPlayer().Transform:SetPosition(target.x, target.y, target.z)
    fx.Transform:SetPosition(target.x, target.y, target.z)
    GetPlayer().components.health:DoDelta(-gamble) -- does damage when used
    inst:DoTaskInTime(GetModConfigData("crsDarkTeleUseDisabledDuration", crsDarkTeleporterDS), function()
     inst:RemoveTag("crsJustUsed")
     crsFindTeleporter:RemoveTag("crsJustUsed")
    end)
   end 
  end
 end 
 
 return inst
end

return Prefab("common/objects/darkteleporter", fn, assets),
 MakePlacer("common/darkteleporter_placer", "darkteleporter", "darkteleporter", "idle")
