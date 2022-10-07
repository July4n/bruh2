function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'buffet/dinnerwall', -600, -800);
	setLuaSpriteScrollFactor('stageback', 0.9, 0.9);
	scaleObject('stagefront', 0.7, 0.7);
	addLuaSprite('stageback', false);
	
	makeLuaSprite('stagefront', 'buffet/dinnerfloor', -700, 250);
	setLuaSpriteScrollFactor('stagefront', 1, 1);
	addLuaSprite('stagefront', false);

	makeAnimatedLuaSprite('Tables', 'buffet/table', -700, 25);
	addAnimationByPrefix('Tables', 'table', 'tablebop', 24, true);
	addLuaSprite('Tables', false);	
	objectPlayAnimation('Tables', 'table', true);
	
	makeAnimatedLuaSprite('SmallCrowd', 'buffet/Crowd1', -150, -250);
	addAnimationByPrefix('SmallCrowd', 'Crowd1', 'Crowd1', 24, true);

	makeAnimatedLuaSprite('BigCrowd', 'Crowd2', -150, -450);
	addAnimationByPrefix('BigCrowd', 'Crowd2', 'buffet/Crowd2', 24, true);
	
	if songName == 'Dinner Theater' then
		addLuaSprite('SmallCrowd', false);	
	end

	if songName == 'Wafer Thin' then
		addLuaSprite('BigCrowd', false);	
	end

end

function onBeatHit ()
	objectPlayAnimation('SmallCrowd', 'Crowd1', true);
	objectPlayAnimation('BigCrowd', 'Crowd2', true);
end