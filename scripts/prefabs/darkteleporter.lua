local assets = {
    Asset("ANIM", "anim/darkteleporter.zip"),
}

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


    return inst
end

return Prefab("common/objects/darkteleporter", fn, assets),
       MakePlacer("common/darkteleporter_placer", "darkteleporter", "darkteleporter", "idle")
