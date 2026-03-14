return {
    -- The inclusion of the below line tells the language server that the first parameter of the cutscene is `WorldCutscene`.
    -- This allows it to fetch us useful documentation that shows all of the available cutscene functions while writing our cutscenes!

    ---@param cutscene WorldCutscene
    complex = function(cutscene, event)
        -- Open textbox and wait for completion
        tenna = cutscene:getCharacter("dummy")
        local x,y = cutscene:getMarker("knight_spawn")
        cutscene:alignFollowers()
        cutscene:text("You know what, I dont like you!")
        cutscene:startEncounter("dummy",true,tenna)
        cutscene:text("Yippeeee, \nI'm alive and good now!")
        cutscene:shakeCharacter(tenna,10,10)
        local knight = cutscene:spawnNPC("dummy",x,y)
        cutscene:detachCamera()
        cutscene:panTo(x,y,5)
        cutscene:wait(7)
        cutscene:startEncounter("dummy",true,knight)
        cutscene:attachCamera()
    end
}
