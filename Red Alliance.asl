state("Red Alliance")
{
	int loading : "mono.dll", 0x001F795C, 0xC0, 0x98, 0x50, 0x430, 0x24;
	int lvl : "UnityPlayer.dll", 0x00FE0320, 0x44, 0xDC, 0x100, 0x24, 0xFE0;
}
init
{
	timer.IsGameTimePaused = false;
}

isLoading
{
	if( current.loading == 1)
	{
		return true;
	}
	{
		return false;
	}


}
reset
{
	if (current.lvl == 1)
		{
			return true;
		}
}
split
{

	return current.lvl > old.lvl;
	
}
start
{
	if (current.lvl == 6 | current.lvl == 2)
		return true;
	
}
exit
{
    timer.IsGameTimePaused = true;
}
