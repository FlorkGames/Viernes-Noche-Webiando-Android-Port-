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
	
	makeLuaSprite('back', 'pulen/pulentos', -620, -305);
	setLuaSpriteScrollFactor('back', 1.0, 1.0);
	scaleObject('back', 2.2,2.2);
	
	makeAnimatedLuaSprite('cat', 'pulen/TomYork', 510, 422);
	setLuaSpriteScrollFactor('cat', 1.0, 1.0);
	scaleObject('cat', 1.0,1.0);
	
	makeAnimatedLuaSprite('gf', 'pulen/GfPulenta_normal', 1608, -10);
	setLuaSpriteScrollFactor('gf', 1.0, 1.0);
	scaleObject('gf', 1.0,1.0);
	
	makeAnimatedLuaSprite('benzo', 'pulen/Benzo', -900, 60);
	setLuaSpriteScrollFactor('benzo', 1.0, 1.0);
	scaleObject('benzo', 1.0,1.0);
	
	makeLuaText('sion', "Recreation SION | MOD EaterKlau", 0, -850, 20);
	setProperty('sion.alpha',0.9);
    setTextSize('sion',18);
    setTextFont("sion", "KeroKero-51BBx.ttf")
    
  
    addLuaSprite('barbot',true)
    addLuaSprite('bartop',true)
	addLuaSprite('back', false);
	addLuaSprite('cat', true);
    addAnimationByPrefix('cat','que','cat',24, true);
    addLuaSprite('gf', false);
    addAnimationByPrefix('gf','que','gf',24, true);
    addLuaSprite('benzo', false);
    addAnimationByPrefix('benzo','so','benso',24, true);
    addLuaText('sion');
    
    setObjectOrder('gfGroup',getObjectOrder('gf'))
    
end

function onSongStart()

doTweenY('Up', 'bartop', -10, 1.0, 'circInOut')
doTweenY('Down', 'barbot', 654, 1.0, 'circInOut')
doTweenY('camera', 'camGame', 40, 1.0, 'circInOut')
doTweenX('Text', 'sion', 880, 1.7, 'circInOut')


end

function onTweenCompleted(tag)
if tag == 'Text' then

doTweenAlpha('Text', 'sion', 0.34, 0.5, 'currentBeat');

end
end

function onEvent(name,value1,value2)
	if name == 'Sion' then 
		
		if value1 == 'gf' then

        doTweenX('gftween', 'gf', 679, 6.5, 'circInOut')

        end
        
        if value1 == 'benzo' then

         doTweenX('bensotween', 'benzo', -300, 11, 'circInOut')
     	end

	end
end