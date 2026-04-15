function onCreate()
	-- background shit
	
	makeLuaSprite('stagefront', 'stage/stagefront', -650, 600);
	setLuaSpriteScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);
	setProperty('stagefront.antialiasing',false);

	

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	makeAnimatedLuaSprite('Cueva', 'stage/The Cave Zone 1',-700, -500);
    setLuaSpriteScrollFactor('bg animado', 0.3, 0.3);		
	scaleObject('bg animado',1, 1);
	setProperty('bg animado.antialiasing',false);
        
		
		makeAnimatedLuaSprite('antorchas', 'stage/The Cave Zone 4',-500, -382);
        setLuaSpriteScrollFactor('antorchas', 0.7, 0.7);		
	    scaleObject('antorchas',1,1);
		setProperty('antorchas.antialiasing',false);
		
		makeAnimatedLuaSprite('awa', 'stage/The Cave Zone 2',-700, -369);
        setLuaSpriteScrollFactor('awa', 0.8, 1);		
	    scaleObject('awa',1, 1);
		setProperty('awa.antialiasing',false);
		

		makeAnimatedLuaSprite('suelo', 'stage/The Cave Zone 5',-1200, -592);
        setLuaSpriteScrollFactor('suelo', 1, 1);		
	    scaleObject('suelo',1.2,1.2)
		setObjectOrder('suelo',20);
		setProperty('suelo.antialiasing',false);
		
		
	end

	addLuaSprite('Cueva', false); 
	addAnimationByPrefix('Cueva', 'idle', 'The Cave Zone 1 idle', 10, true);
	addLuaSprite('awa', false); 
	addAnimationByPrefix('awa', 'idle', 'The Cave Zone 2', 10, true);
	addLuaSprite('antorchas', false); 
	addAnimationByPrefix('antorchas', 'idle', 'The Cave Zone 4', 10, true);
	addLuaSprite('suelo', false);
	addAnimationByPrefix('suelo', 'idle', 'The Cave Zone 5', 10, true);
	
	
end
