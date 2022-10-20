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
	
	makeLuaSprite('back', 'week1/Back', -1450, -890);
	setLuaSpriteScrollFactor('back', 0.95, 1.0);
	scaleObject('back', 3,3);
	
	makeLuaSprite('qliao', 'week1/xdddd', -1450, -890);
	setLuaSpriteScrollFactor('qliao', 0.95, 1.0);
	scaleObject('qliao', 1.5,1.5);
	
    makeAnimatedLuaSprite('pico', 'week1/Shy__Pico_HUASOS_assets', 1250, 370);
	setLuaSpriteScrollFactor('pico', 0.95, 1.0);
	scaleObject('pico', 0.83,0.83);
	
	makeAnimatedLuaSprite('front', 'week1/genteFront', -510, -375);
	setLuaSpriteScrollFactor('front', 1.08, 1.0);
	scaleObject('front', 2.2,2.2);
	
	makeAnimatedLuaSprite('cameo', 'week1/sulayrecameo', 75, 310);
	setLuaSpriteScrollFactor('cameo', 0.95, 1.0);
	scaleObject('cameo', 0.83,0.83);
	
	makeAnimatedLuaSprite('taco', 'week1/mgrchilenita', -178, 530);
	setLuaSpriteScrollFactor('taco', 0.95, 1.0);
	scaleObject('taco', 0.69,0.69);
	
	makeAnimatedLuaSprite('ger', 'week1/holasoygerman', -410, 160);
	setLuaSpriteScrollFactor('ger', 0.95, 1.0);
	scaleObject('ger', 0.80,0.80);
	
	makeAnimatedLuaSprite('gays', 'week1/MaavoMaritzaIvette', -310, -18);
	setLuaSpriteScrollFactor('gays', 0.95, 1.0);
	scaleObject('gays', 0.55,0.55);
	
	makeLuaText('sion', "Recreation SION | MOD EaterKlau", 0, -850, 20);
	setProperty('sion.alpha',0.9);
    setTextSize('sion',18);
    setTextFont("sion", "KeroKero-51BBx.ttf")
    
  
    addLuaSprite('barbot',true)
    addLuaSprite('bartop',true)
	addLuaSprite('back', false);
	addLuaSprite('pico', false);
    addAnimationByPrefix('pico','Dick','Both_idles',40, true);
    addLuaSprite('cameo', false);
    addAnimationByPrefix('cameo','idle','sulayrebopper',40, true);
     addLuaSprite('taco', false);
    addAnimationByPrefix('taco','idle','mgrchilenita instance ',40, true);
    addLuaSprite('gays', false);
    addAnimationByPrefix('gays','idle','familiafelis',40, true);
    addLuaSprite('ger', false);
    addAnimationByPrefix('ger','idle','darkuro instance ',50, true);
    addLuaSprite('qliao', false);
    addLuaSprite('front', true);
    addAnimationByPrefix('front','mensos','BopCrowdFront',40, true);
    addLuaText('sion');
    
end

function onSongStart()

doTweenY('Up', 'bartop', -10, 1.0, 'circInOut')
doTweenY('Down', 'barbot', 654, 1.0, 'circInOut')
doTweenY('camera', 'camGame', 20, 1.0, 'circInOut')
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