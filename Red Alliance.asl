state("Red Alliance")
{
	int loading : "UnityPlayer.dll", 0x00FEA8F0, 0x20;
	int lvl : "UnityPlayer.dll", 0x00FD9174, 0x68, 0x0;
}

isLoading
{
	if( current.loading == 0 )
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
