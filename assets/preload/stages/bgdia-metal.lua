function onCreate()
	
	makeLuaSprite('bartop','',0,-200)
    makeGraphic('bartop',1280,70,'000000')
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)
    scaleObject('bartop', 1.01, 1.01);

    makeLuaSprite('barbot','',0,755)
    makeGraphic('barbot',1280,200,'000000')
    scaleObject('barbot', 1.01, 1.01);
	setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')
	
	makeLuaSprite('back', 'week2/bg3', -685, -365);
	setLuaSpriteScrollFactor('back', 0.99, 0.97);
	scaleObject('back', 3.2,3.2);
	
	makeLuaText('sion', "Recreation SION | MOD EaterKlau", 0, -850, 20);
	setProperty('sion.alpha',0.9);
    setTextSize('sion',18);
    setTextFont("sion", "KeroKero-51BBx.ttf")
    
  
    addLuaSprite('barbot',true)
    addLuaSprite('bartop',true)
	addLuaSprite('back', false);
    addLuaText('sion');
    
end

function onCreatePost()

setProperty('gf.alpha', 0)

end

function onSongStart()

doTweenY('Up', 'bartop', -10, 1.0, 'circInOut')
doTweenY('Down', 'barbot', 654, 1.0, 'circInOut')
doTweenY('camera', 'camGame', 25, 1.0, 'circInOut')
doTweenX('Text', 'sion', 880, 1.7, 'circInOut')

end

function onTweenCompleted(tag)
if tag == 'Text' then

doTweenAlpha('Text', 'sion', 0.34, 0.5, 'currentBeat');

end
end

function onEvent(name,value1,value2)
	if name == 'Sion' then 
		
		if value1 == 'gfdol' then

        triggerEvent('Change Character', 'gf', 'gf-idol');

        end
        
        if value1 == 'idol' then

         doTweenAlpha('dad', 'dad', 1, 0.4, 'currentBeat');

     	end
        
        if value1 == 'noidol' then

        doTweenAlpha('dad', 'dad', 0, 0.4, 'currentBeat');

     	end

	end
end