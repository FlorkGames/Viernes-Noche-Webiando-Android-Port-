function onStartCountdown()

    if not allowCountdown and isStoryMode and not seenCutscene then

    makeLuaSprite('0', '4revancha/0', 0, 0);
    scaleObject('0', 1.0,1.0);
   setObjectCamera('0', 'camHUD')
   setProperty('0.alpha',1);


     makeLuaSprite('1', '4revancha/1', 0, 0);
    scaleObject('1', 1.0,1.0);
   setObjectCamera('1', 'camHUD')
   setProperty('1.alpha',0);
   
   makeLuaSprite('2', '4revancha/2', 0, 0);
    scaleObject('2', 1.0,1.0);
   setObjectCamera('2', 'camHUD')
   setProperty('2.alpha',0);
   
   makeLuaSprite('3', '4revancha/3', 0, 0);
    scaleObject('3', 1.0,1.0);
   setObjectCamera('3', 'camHUD')
   setProperty('3.alpha',0);
   
   makeLuaSprite('4', '4revancha/4', 0, 0);
    scaleObject('4', 1.0,1.0);
   setObjectCamera('4', 'camHUD')
   setProperty('4.alpha',0);
   
     makeLuaSprite('5', '4revancha/5', 0, 0);
    scaleObject('5', 1.0,1.0);
   setObjectCamera('5', 'camHUD')
   setProperty('5.alpha',0);
   
   makeLuaSprite('6', '4revancha/6', 0, 0);
    scaleObject('6', 1.0,1.0);
   setObjectCamera('6', 'camHUD')
   setProperty('6.alpha',0);
   
     addLuaSprite('0', false)
     addLuaSprite('1', false)
     addLuaSprite('2', false)
     addLuaSprite('3', false)
     addLuaSprite('4', false)
     addLuaSprite('5', false)
     addLuaSprite('6', false)
     

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

	setProperty('0.alpha',1)

     end

    if count == 2 then

    setProperty('0.alpha',0);
    setProperty('1.alpha',1);	
    	
     end
    	
    if count == 3 then

    setProperty('2.alpha',1);
    setProperty('1.alpha',0);
    	
     end

    if count == 4 then

    setProperty('2.alpha',0);
    setProperty('3.alpha',1);

      end
    
    if count == 13 then

    setProperty('4.alpha',1);
    setProperty('3.alpha',0);
    
  
    end
    
    if count == 14 then

    setProperty('4.alpha',1);
    setProperty('3.alpha',0);
    
    end
	
	if count == 15 then

	setProperty('4.alpha',1);

     end

    if count == 16 then

    setProperty('5.alpha',1);
    setProperty('4.alpha',0);
    	
    	
     end
    	
    if count == 17 then

    setProperty('5.alpha',1);
    	
     end

    if count == 18 then

    setProperty('5.alpha',0);
    setProperty('6.alpha',1);

     end
    	
    if count == 19 then

    setProperty('5.alpha',0);
    setProperty('6.alpha',1);
    	
    end
    
    if count == 20 then
    
    setProperty('5.alpha',0);
    setProperty('6.alpha',1);
    
    end
    
     if count == 21 then
    
    removeLuaSprite('0', true)
     removeLuaSprite('1', true)
     removeLuaSprite('2', true)
     removeLuaSprite('3', true)
     removeLuaSprite('4', true)
     removeLuaSprite('5', true)
     removeLuaSprite('6', true)
    	
end

end

function onEndDialogue(tag, loops, loopsLeft)

   if tag== '6' then
   
   setProperty('6.alpha',0);

end

end