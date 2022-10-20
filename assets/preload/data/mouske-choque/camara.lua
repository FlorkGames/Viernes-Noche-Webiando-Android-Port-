function opponentNoteHit(id, direction, noteType, isSustainNote)

    local luckyRoll = math.random(1, 30)

    if (luckyRoll >= 15 and curStep <= 2805 and curStep >= 160) then
        runTimer('Lol', 0, 1)
        runTimer('Lol', 0.1, 1)
	end
	
    cameraShake('game', 0.030, 0.05)
end;