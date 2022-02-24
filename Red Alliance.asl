state("Red Alliance")
{
	int loading : "UnityPlayer.dll", 0x00FEA8F0, 0x20;
	int loadingg : "mono.dll", 0x001F9BD0, 0xA4, 0x4, 0xC, 0xD8;
	int lvl : "UnityPlayer.dll", 0x00FD9174, 0x68, 0x0;
	int ismenu : "UnityPlayer.dll" , 0x00FE9314, 0x18;
}
init
{
	timer.IsGameTimePaused = false;
}

isLoading
{
	if( current.loading == 1 | current.loadingg == 1 | current.ismenu == 0)
	{
		return true;
	}
	{
		return false;
	}
}
reset
{
	if (current.loadingg == 0)
	{
	if (current.ismenu != 1)
		return true;
	}
}
split
{
	if (current.ismenu != 0)
	return current.lvl > old.lvl;
	
}
start
{
	if (current.ismenu != 0)
	{
		return current.lvl > old.lvl;

	}
}
exit
{
    timer.IsGameTimePaused = true;
}
