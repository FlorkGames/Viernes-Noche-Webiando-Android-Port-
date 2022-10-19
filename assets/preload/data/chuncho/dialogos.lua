function onStartCountdown()

    if not allowCountdown and isStoryMode and not seenCutscene then
    
     makeLuaSprite('1', '5revancha/11', 0, 0);
    scaleObject('1', 1.0,1.0);
   setObjectCamera('1', 'camHUD')
   setProperty('1.alpha',1);
   
   makeLuaSprite('2', '5revancha/12', 0, 0);
    scaleObject('2', 1.0,1.0);
   setObjectCamera('2', 'camHUD')
   setProperty('2.alpha',0);
   
   makeLuaSprite('3', '5revancha/13', 0, 0);
    scaleObject('3', 1.0,1.0);
   setObjectCamera('3', 'camHUD')
   setProperty('3.alpha',0);
   
   makeLuaSprite('4', '5revancha/14', 0, 0);
    scaleObject('4', 1.0,1.0);
   setObjectCamera('4', 'camHUD')
   setProperty('4.alpha',0);
   
     makeLuaSprite('5', '5revancha/15', 0, 0);
    scaleObject('5', 1.0,1.0);
   setObjectCamera('5', 'camHUD')
   setProperty('5.alpha',0);
   
   makeLuaSprite('6', '5revancha/16', 0, 0);
    scaleObject('6', 1.0,1.0);
   setObjectCamera('6', 'camHUD')
   setProperty('6.alpha',0);
   
   makeLuaSprite('7', '5revancha/17', 0, 0);
    scaleObject('7', 1.0,1.0);
   setObjectCamera('7', 'camHUD')
   setProperty('7.alpha',0);
   
     makeLuaSprite('8', '5revancha/18', 0, 0);
    scaleObject('8', 1.0,1.0);
   setObjectCamera('8', 'camHUD')
   setProperty('8.alpha',0);
   
   makeLuaSprite('9', '5revancha/19', 0, 0);
    scaleObject('9', 1.0,1.0);
   setObjectCamera('9', 'camHUD')
   setProperty('9.alpha',0);
   
     addLuaSprite('0', false)
     addLuaSprite('1', false)
     addLuaSprite('2', false)
     addLuaSprite('3', false)
     addLuaSprite('4', false)
     addLuaSprite('5', false)
     addLuaSprite('6', false)
     addLuaSprite('7', false)
     addLuaSprite('8', false)
     addLuaSprite('9', false)
     
     

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

	setProperty('1.alpha',0)
	setProperty('2.alpha',1)

     end

    if count == 2 then

    setProperty('1.alpha',0);
    setProperty('2.alpha',1);	
    	
     end
    	
    if count == 3 then

    setProperty('2.alpha',0);
    setProperty('3.alpha',1);
    	
     end

    if count == 4 then

    setProperty('3.alpha',0);
    setProperty('4.alpha',1);

      end
    
    if count == 5 then

    setProperty('4.alpha',0);
    setProperty('5.alpha',1);
    
  
    end
    
    if count == 6 then

    setProperty('6.alpha',1);
    setProperty('5.alpha',0);
    
    end
	
	if count == 7 then

	setProperty('6.alpha',0);
    setProperty('7.alpha',1)
    
     end

    if count == 8 then

    setProperty('7.alpha',0);
    setProperty('8.alpha',1);
    	
    	
     end
    	
    if count == 9 then

    setProperty('8.alpha',0);
    setProperty('9.alpha',1)
    	
     end

    if count == 10 then
    
     removeLuaSprite('0', true)
     removeLuaSprite('1', true)
     removeLuaSprite('2', true)
     removeLuaSprite('3', true)
     removeLuaSprite('4', true)
     removeLuaSprite('5', true)
     removeLuaSprite('6', true)
     removeLuaSprite('7', true)
     removeLuaSprite('8', true)
     removeLuaSprite('9', true)	
end

end

function onEndDialogue(tag, loops, loopsLeft)

   if tag== '6' then
   
   setProperty('6.alpha',0);

end

end