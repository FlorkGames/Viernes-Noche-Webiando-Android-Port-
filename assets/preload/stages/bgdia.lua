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
	
	makeLuaSprite('back', 'week2/bg1', -678, -310);
	setLuaSpriteScrollFactor('back', 0.95, 0.97);
	scaleObject('back', 3.66,3.66);
	
    makeAnimatedLuaSprite('cumpota', 'week2/Personajes_Fondo', 123, 155);
	setLuaSpriteScrollFactor('cumpota', 0.95, 0.97);
	scaleObject('cumpota', 1.29,1.29);
	
	makeAnimatedLuaSprite('bo', 'week2/wachbopper', 1110, 405);
	setLuaSpriteScrollFactor('bo', 0.97, 0.97);
	scaleObject('bo', 1.29,1.29);
	
	makeAnimatedLuaSprite('pub', 'week2/publico', -1703, 110);
	setLuaSpriteScrollFactor('pub', 0.95, 0.97);
	scaleObject('pub', 2.58,2.58);
	
	makeLuaText('sion', "Recreation SION | MOD EaterKlau", 0, -850, 20);
	setProperty('sion.alpha',0.9);
    setTextSize('sion',18);
    setTextFont("sion", "KeroKero-51BBx.ttf")
    
  
    addLuaSprite('barbot',true)
    addLuaSprite('bartop',true)
	addLuaSprite('back', false);
	addLuaSprite('cumpota', false);
    addAnimationByPrefix('cumpota','fuck','Chars Idle',24, true);
    addLuaSprite('bo', false);
    addAnimationByPrefix('bo','pija','Symbol 1 instance ',24, true);
    
    addLuaSprite('pub', true);
    addAnimationByPrefix('pub','uno','publico EbolaFer',24, true);
    addAnimationByPrefix('pub','dos','publico JotaRicky',24, true);
    addAnimationByPrefix('pub','tres','publico KlauZarky',24, true);
    addAnimationByPrefix('pub','cuatro','publico KoiNebbits',24, true);
    addAnimationByPrefix('pub','cinco','publico PapExpan',24, true);
    addAnimationByPrefix('pub','seis','publico SugarBeru',24, true);
    addAnimationByPrefix('pub','siete','publico SurfeJosh',24, true);
    addAnimationByPrefix('pub','ocho','publico SleepyJoa',24, true);
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

if tag == 'Primeros' then
doTweenX('Segundo', 'pub', 2500, 14, 'linear');
objectPlayAnimation('pub', 'dos', true)
setProperty("pub.x", -1710)

end

if tag == 'Segundo' then
doTweenX('Tercero', 'pub', -2500, 14, 'linear');
objectPlayAnimation('pub', 'tres', true)
setProperty("pub.x", 2000)
setProperty('pub.flipX',false)

end

if tag == 'Tercero' then
doTweenX('Cuarto', 'pub', 2500, 14, 'linear');
objectPlayAnimation('pub', 'cuatro', true)
setProperty("pub.x", -1760)
setProperty('pub.flipX',true)

end

if tag == 'Cuarto' then
doTweenX('Quinto', 'pub', -2500, 14, 'linear');
objectPlayAnimation('pub', 'seis', true)
setProperty("pub.x", 2000)
setProperty('pub.flipX',false)

end

if tag == 'Quinto' then
doTweenX('Sexto', 'pub', 2500, 14, 'linear');
objectPlayAnimation('pub', 'ocho', true)
setProperty("pub.x", -1760)
setProperty('pub.flipX',true)

end

if tag == 'Sexto' then
doTweenX('Septimo', 'pub', -2500, 14, 'linear');
objectPlayAnimation('pub', 'cinco', true)
setProperty("pub.x", 2000)
setProperty('pub.flipX',false)

end

if tag == 'Septimo' then
doTweenX('Octavo', 'pub', 2500, 14, 'linear');
objectPlayAnimation('pub', 'siete', true)
setProperty("pub.x", -1760)
setProperty('pub.flipX',true)

end

if tag == 'Octavo' then
doTweenX('Noveno', 'pub', -2500, 14, 'linear');
objectPlayAnimation('pub', 'dos', true)
setProperty("pub.x", 2000)
setProperty('pub.flipX',false)

end
end

function onEvent(name,value1,value2)
	if name == 'Sion' then 
		
		if value1 == 'uno' then

        doTweenX('Primeros', 'pub', 5000, 24, 'linear');
        objectPlayAnimation('pub', 'uno', true)
        setProperty('pub.flipX',true)

     	end

	end
end