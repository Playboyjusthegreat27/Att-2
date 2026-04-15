sprite = 'stage/cieloR'
size = 3546
startX = -400
startY = -200
duration = -50



function onCreate()
makeLuaSprite(sprite .. '1', sprite, startX, startY)
addLuaSprite(sprite .. '1', false)
makeLuaSprite(sprite .. '2', sprite, startX + size, startY)
addLuaSprite(sprite .. '2', false)

makeLuaSprite(sprite .. '1speed', sprite, startX, startY)
addLuaSprite(sprite .. '1speed', false)
makeLuaSprite(sprite .. '2speed', sprite, startX + size, startY)
addLuaSprite(sprite .. '2speed', false)

setProperty('stage/cieloRspeed.alpha', 0)
setProperty('stage/cieloRspeed.alpha', 0)
scrollA()
scrollA2()


if not lowQuality then
        
	
		
		makeAnimatedLuaSprite('edi', 'stage/Scrap Gore zone 1',-500, -400);
        setLuaSpriteScrollFactor('edi', 0.5, 0.5);		
	    scaleObject('edi',1,1);
		setProperty('edi.antialiasing',false);
		
		makeAnimatedLuaSprite('edi 2', 'stage/Scrap brain zone 2',-500, -400);
        setLuaSpriteScrollFactor('edi 2', 0.7, 0.7);		
	    scaleObject('edi 2',1,1);
		setProperty('edi 2.antialiasing',false);
		

		makeAnimatedLuaSprite('suelo', 'stage/Scrap Gore zone 3',-600, -592);
        setLuaSpriteScrollFactor('suelo', 1, 1);		
	    scaleObject('suelo',1.2,1.2)
		setProperty('suelo.antialiasing',false);
		
		
	end

	addLuaSprite('stagefront', false);
	addLuaSprite('edi', false); 
	addAnimationByPrefix('edi', 'idle', 'Scrap Gore zone 1 idle', 10, true);
	addLuaSprite('edi 2', false); 
	addAnimationByPrefix('edi 2', 'idle', 'Scrap brain zone 2 idle', 2, true);
	addLuaSprite('suelo', false);
	addAnimationByPrefix('suelo', 'idle', 'Scrap Gore zone 3 idle', 5, true);
	
	

end

function scrollA()
doTweenX(sprite .. '1move',sprite .. '1', startX - size, duration)
doTweenX(sprite .. '2move',sprite .. '2', startX, duration)
end

function scrollA2()
doTweenX(sprite .. '1moveSpeed',sprite .. '1speed', startX - size, 4)
doTweenX(sprite .. '2moveSpeed',sprite .. '2speed', startX, 4)
end

function onTweenCompleted(tag)
if tag == (sprite .. '2move') then
scrollB()
end
if tag == (sprite .. '2move2') then
scrollA()
end

if tag == (sprite .. '2moveSpeed') then
scrollB2()
end
if tag == (sprite .. '2move2Speed') then
scrollA2()
end

end

function scrollB()
doTweenX(sprite .. '1move2',sprite .. '1', startX, 0.001)
doTweenX(sprite .. '2move2',sprite .. '2', startX + size, 0.001)
end

function scrollB2()
doTweenX(sprite .. '1move2Speed',sprite .. '1speed', startX, 0.001)
doTweenX(sprite .. '2move2Speed',sprite .. '2speed', startX + size, 0.001)
end