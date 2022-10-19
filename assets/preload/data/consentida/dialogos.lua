function onStartCountdown()

    if not allowCountdown and isStoryMode and not seenCutscene then

     makeLuaSprite('primeros3', 'Concentida/3primeros', 0, 0);
    scaleObject('primeros3', 0.5,0.5);
   setObjectCamera('primeros3', 'camHUD')
   
   makeLuaSprite('bep', 'Concentida/beep', 0, 0);
    scaleObject('bep', 0.5,0.5);
   setObjectCamera('bep', 'camHUD')
   setProperty('bep.alpha',0);
   
   makeLuaSprite('carbon', 'Concentida/donde', 0, 0);
    scaleObject('carbon', 0.5,0.5);
   setObjectCamera('carbon', 'camHUD')
   setProperty('carbon.alpha',0);
   
   makeLuaSprite('inutil', 'Concentida/bep2', 0, 0);
    scaleObject('inutil', 0.5,0.5);
   setObjectCamera('inutil', 'camHUD')
   setProperty('inutil.alpha',0);
   
   makeLuaSprite('gfhater', 'Concentida/gfhater2', 0, 0);
    scaleObject('gfhater', 0.5,0.5);
   setObjectCamera('gfhater', 'camHUD')
   setProperty('gfhater.alpha',0);
   
   makeLuaSprite('ivette', 'Concentida/conchetumare', 0, 0);
    scaleObject('ivette', 0.5,0.5);
   setObjectCamera('ivette', 'camHUD')
   setProperty('ivette.alpha',0);
   
   makeLuaSprite('enano', 'Concentida/enano', 0, 0);
    scaleObject('enano', 0.5,0.5);
   setObjectCamera('enano', 'camHUD')
   setProperty('enano.alpha',0);
   
   makeLuaSprite('chiki', 'Concentida/chikitin', 0, 0);
    scaleObject('chiki', 0.5,0.5);
   setObjectCamera('chiki', 'camHUD')
   setProperty('chiki.alpha',0);
   
   makeLuaSprite('estak', 'Concentida/yestarandom', 0, 0);
    scaleObject('estak', 0.5,0.5);
   setObjectCamera('estak', 'camHUD')
   setProperty('estak.alpha',0);


   makeLuaSprite('lista', 'Concentida/lista', 0, 0);
    scaleObject('lista', 0.5,0.5);
   setObjectCamera('lista', 'camHUD')
   setProperty('lista.alpha',0);
   
     addLuaSprite('lista', false)
     addLuaSprite('estak', false)
     addLuaSprite('chiki', false)
     addLuaSprite('enano', false)
     addLuaSprite('ivette', false)
     addLuaSprite('gfhater', false)
     addLuaSprite('carbon', false)
     addLuaSprite('inutil', false)
     addLuaSprite('bep', false)
     addLuaSprite('primeros3', true)
     

   setProperty('inCutscene', true);
     runTimer('startDialogue', 0.8);
 
    allowCountdown = true;
    return Function_Stop;

 end
   return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)

   if tag== 'startDialogue' then
   startDialogue('pene');

end

end

function onNextDialogue(count)

   if count == 1 then

	setProperty('primeros3.alpha',1)

     end

    if count == 2 then

    	setProperty('primeros3.alpha',1);
    	
     end
    	
    if count == 3 then

    	setProperty('primeros3.alpha',0);
    	setProperty('bep.alpha',1);
    	
     end

    if count == 4 then

    	setProperty('bep.alpha',0);
    	setProperty('carbon.alpha',1);

     end
    	
    if count == 5 then

    	setProperty('carbon.alpha',0);
    	setProperty('inutil.alpha',1);
    	
    end
    
    if count == 6 then

    	setProperty('inutil.alpha',0);
    	setProperty('gfhater.alpha',1);
    	
    end
    
    if count == 8 then

    	setProperty('gfhater.alpha',0);
    	setProperty('ivette.alpha',1);
    	
    end
    
    if count == 9 then

    	setProperty('ivette.alpha',0);
    	setProperty('enano.alpha',1);
    	
    	
    end

    if count == 11 then

    	setProperty('enano.alpha',0);
    	setProperty('chiki.alpha',1);
    	
    end

    if count == 12 then

    	setProperty('chiki.alpha',0);
    	setProperty('estak.alpha',1);
    	
    end
    
    if count == 13 then

    	setProperty('estak.alpha',0);
    	setProperty('lista.alpha',1);
    	
    end
    	
    if count == 14 then

    	setProperty('lista.alpha',0);


end

end