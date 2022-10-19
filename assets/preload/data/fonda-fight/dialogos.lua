function onStartCountdown()

    if not allowCountdown and isStoryMode and not seenCutscene then

     makeLuaSprite('1', '3matt/1', 0, 0);
    scaleObject('1', 0.5,0.5);
   setObjectCamera('1', 'camHUD')
   setProperty('1.alpha',0);
   
   makeLuaSprite('2', '3matt/2', 0, 0);
    scaleObject('2', 0.5,0.5);
   setObjectCamera('2', 'camHUD')
   setProperty('2.alpha',0);
   
   makeLuaSprite('3', '3matt/3', 0, 0);
    scaleObject('3', 0.5,0.5);
   setObjectCamera('3', 'camHUD')
   setProperty('3.alpha',1);
   
   makeLuaSprite('4', '3matt/4', 0, 0);
    scaleObject('4', 0.5,0.5);
   setObjectCamera('4', 'camHUD')
   setProperty('4.alpha',0);
   
     addLuaSprite('1', false)
     addLuaSprite('2', false)
     addLuaSprite('3', false)
     addLuaSprite('4', false)
     

   setProperty('inCutscene', true);
     runTimer('startDialogue', 0.8);
 
    allowCountdown = true;
    return Function_Stop;

 end
   return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)

   if tag== 'startDialogue' then
   startDialogue('dialogueStart');

end

end

function onNextDialogue(count)

   if count == 1 then

	setProperty('3.alpha',1)

     end

    if count == 2 then

    setProperty('3.alpha',0);
    setProperty('4.alpha',1);
    	
    	
     end
    	
    if count == 3 then

    	setProperty('4.alpha',1);
    	
     end

    if count == 4 then

    	setProperty('4.alpha',0);
    	setProperty('1.alpha',1);

     end
    	
    if count == 5 then

    	setProperty('1.alpha',1);
    	
    end
    
    if count == 6 then

    	setProperty('1.alpha',1);
    	
    end
    
    if count == 7 then

    	setProperty('1.alpha',0);
    	setProperty('2.alpha',1);
    	
    end
    
    if count == 8 then

    	setProperty('2.alpha',1);
    	
    	
    end

    if count == 9 then

    	setProperty('2.alpha',0);
    	
end

end