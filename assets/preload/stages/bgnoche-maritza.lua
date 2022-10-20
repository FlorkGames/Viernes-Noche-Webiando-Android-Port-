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
	
	makeLuaSprite('back', 'week3/bg1', -843, -325);
	setLuaSpriteScrollFactor('back', 0.95, 0.97);
	scaleObject('back', 2,2);
	
	makeLuaSprite('over', 'week3/relleno', -843, -325);
	setLuaSpriteScrollFactor('over', 0.95, 0.97);
	scaleObject('over', 2,2);
	
    makeAnimatedLuaSprite('papus', 'week3/papus1', -284, 267);
	setLuaSpriteScrollFactor('papus', 0.95, 0.97);
	scaleObject('papus', 2.0,2.0);
	
	makeAnimatedLuaSprite('papus3', 'week3/papus3', 1129, 197);
	setLuaSpriteScrollFactor('papus3', 0.97, 0.97);
	scaleObject('papus3', 2.0,2.0);
	
	makeAnimatedLuaSprite('pub', 'week2/publico', -1703, 90);
	setLuaSpriteScrollFactor('pub', 0.95, 0.97);
	scaleObject('pub', 2.58,2.58);
	
	makeAnimatedLuaSprite('extra', 'week2/Publico_2', -1703, 540);
	setLuaSpriteScrollFactor('extra', 0.95, 0.97);
	scaleObject('pub', 2.58,2.58);
	
	makeLuaText('sion', "Recreation SION | MOD EaterKlau", 0, -850, 20);
	setProperty('sion.alpha',0.9);
    setTextSize('sion',18);
    setTextFont("sion", "KeroKero-51BBx.ttf")
    
  
    addLuaSprite('barbot',true)
    addLuaSprite('bartop',true)
	addLuaSprite('back', false);
	addLuaSprite('papus', false);
    addAnimationByPrefix('papus','Dick','derecha',24, true);
    addLuaSprite('papus3', false);
    addAnimationByPrefix('papus3','chucha','izquierda instance ',24, true);
    
    addLuaSprite('extra', true);
    addAnimationByPrefix('extra','Moon','Moon Yirius',24, true);
    addLuaSprite('pub', true);
    addAnimationByPrefix('pub','uno','publico EbolaFer',24, true);
    addAnimationByPrefix('pub','dos','publico JotaRicky',24, true);
    addAnimationByPrefix('pub','tres','publico KlauZarky',24, true);
    addAnimationByPrefix('pub','cuatro','publico KoiNebbits',24, true);
    addAnimationByPrefix('pub','cinco','publico PapExpan',24, true);
    addAnimationByPrefix('pub','seis','publico SugarBeru',24, true);
    addAnimationByPrefix('pub','siete','publico SurfeJosh',24, true);
    addAnimationByPrefix('pub','ocho','publico SleepyJoa',24, true);
    addLuaSprite('over',true)
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
objectPlayAnimation('pub', 'siete', true)
setProperty("pub.x", -1710)

end

if tag == 'Segundo' then
doTweenX('Tercero', 'pub', -2500, 14, 'linear');
objectPlayAnimation('pub', 'ocho', true)
setProperty("pub.x", 2300)
setProperty('pub.flipX',false)

end

if tag == 'Tercero' then
doTweenX('Cuarto', 'pub', -2500, 14, 'linear');
objectPlayAnimation('pub', 'cinco', true)
setProperty("pub.x", 2300)
setProperty('pub.flipX',false)

end

if tag == 'Cuarto' then
doTweenX('Quinto', 'pub', 2500, 14, 'linear');
objectPlayAnimation('pub', 'cuatro', true)
setProperty("pub.x", -1760)
setProperty('pub.flipX',true)

end

if tag == 'Quinto' then
doTweenX('Sexto', 'pub', -2500, 14, 'linear');
objectPlayAnimation('pub', 'tres', true)
setProperty("pub.x", 2300)
setProperty('pub.flipX',false)

end

if tag == 'Sexto' then
doTweenX('Septimo', 'extra', -2500, 14, 'linear');
objectPlayAnimation('extra', 'Moon', true)
setProperty("extra.x", 2300)
setProperty('extra.flipX',false)

end

if tag == 'Septimo' then
doTweenX('Octavo', 'pub', 2500, 14, 'linear');
objectPlayAnimation('pub', 'seis', true)
setProperty("pub.x", -1760)
setProperty('pub.flipX',true)

end

if tag == 'Octavo' then
doTweenX('Noveno', 'pub', -2500, 14, 'linear');
objectPlayAnimation('pub', 'dos', true)
setProperty("pub.x", 2300)
setProperty('pub.flipX',false)

end

if tag == 'Noveno' then
doTweenX('Decimo', 'pub', 2500, 14, 'linear');
objectPlayAnimation('pub', 'siete', true)
setProperty("pub.x", -1710)
setProperty('pub.flipX',true)

end

if tag == 'Decimo' then
doTweenX('Onceavo', 'pub', 2500, 14, 'linear');
objectPlayAnimation('pub', 'ocho', true)
setProperty("pub.x", -1800)
setProperty('pub.flipX',true)

end

if tag == 'Onceavo' then
doTweenX('Doceavo', 'pub', -2500, 14, 'linear');
objectPlayAnimation('pub', 'dos', true)
setProperty("pub.x", -1800)
setProperty('pub.flipX',false)

end

if tag == 'Doceavo' then
doTweenX('Trece', 'pub', -2500, 14, 'linear');
objectPlayAnimation('pub', 'cuatro', true)
setProperty("pub.x", 2300)
setProperty('pub.flipX',false)

end

if tag == 'Trece' then
doTweenX('catorce', 'pub', 2500, 14, 'linear');
objectPlayAnimation('pub', 'tres', true)
setProperty("pub.x", -1800)
setProperty('pub.flipX',true)

end
end

function onEvent(name,value1,value2)
	if name == 'Sion' then 
		
		if value1 == 'uno' then

        doTweenX('Primeros', 'pub', 2500, 14, 'linear');
        objectPlayAnimation('pub', 'uno', true)
        setProperty('pub.flipX',true)

     	end

	end
end