state("Red Alliance")
{
	int loading : "UnityPlayer.dll", 0x00FEA8F0, 0x20;
	int loadingg : "mono.dll", 0x001F9BD0, 0xA4, 0x4, 0xC, 0xD8;
	int lvl : "UnityPlayer.dll", 0x00FD9174, 0x68, 0x0;
}
init
{
	timer.IsGameTimePaused = false;
}

isLoading
{
	if( current.loading == 0 || current.loadingg == 0 )
	{
		return false;
	}
		return true;
}
split
{

		return current.lvl > old.lvl;
		
}
start
{

		return current.lvl > old.lvl;

}
exit
{
    timer.IsGameTimePaused = true;
}
