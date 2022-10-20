function onCreate()
	
	
	makeLuaSprite('bartop','',0,-200)
    makeGraphic('bartop',1280,70,'000000')
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)

    makeLuaSprite('barbot','',0,755)
    makeGraphic('barbot',1280,200,'000000')
	setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')
	
	makeLuaSprite('back', 'secret/minnie', -605, -150);
	setLuaSpriteScrollFactor('back', 1.0, 1.0);
	
	makeLuaText('sion', "Recreation SION | MOD EaterKlau", 0, -850, 20);
	setProperty('sion.alpha',0.9);
    setTextSize('sion',18);
    setTextFont("sion", "KeroKero-51BBx.ttf")
    
    scaleObject('barbot', 3, 3);
    scaleObject('bartop', 3, 3);
    scaleObject('back', 3, 3);
    
    addLuaSprite('barbot',true)
    addLuaSprite('bartop',true)
	addLuaSprite('back', false);
    addLuaText('sion');
    
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