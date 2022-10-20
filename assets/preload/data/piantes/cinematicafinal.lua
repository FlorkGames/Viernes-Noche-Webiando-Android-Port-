function onEndSong()
	if not allowEnd and isStoryMode then
		startVideo('final-spanish');
		allowEnd = true;
		return Function_Stop;
	end
	return Function_Continue;
end