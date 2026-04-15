function onCreate()
	-- background shit
	
	makeLuaSprite('stagefront', 'stage/stagefront', -650, 600);
	setLuaSpriteScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1, 1);
	setProperty('stagefront.antialiasing',false);

	

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	makeAnimatedLuaSprite('bg animado', 'stage/Negro BG',-500, -300);
    setLuaSpriteScrollFactor('bg animado', 0.3, 0.3);		
	scaleObject('bg animado',1, 1);
	setProperty('bg animado.antialiasing',false);
        
		makeAnimatedLuaSprite('cascada', 'stage/Final Zone Bg 1',-500, -300);
        setLuaSpriteScrollFactor('cascada', 0.7, 0.7);		
	    scaleObject('cascada',0.8,0.8);
		setProperty('cascada.antialiasing',false);

		makeAnimatedLuaSprite('suelo', 'stage/Final Zone Bg 2',-600, -600);
        setLuaSpriteScrollFactor('suelo', 1, 1);		
	    scaleObject('suelo',1.2,1.2)
		setProperty('suelo.antialiasing',false);
		
		
	end

	addLuaSprite('stagefront', false);
	addLuaSprite('bg animado', false); 
	addAnimationByPrefix('bg animado', 'idle', 'Negro BG', 10, true);
	addLuaSprite('cascada', false); 
	addAnimationByPrefix('cascada', 'idle', 'Final Zone Bg 1', 10, true);
	addLuaSprite('suelo', false);
	addAnimationByPrefix('suelo', 'idle', 'Final Zone Bg 2', 2, true);
	
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
