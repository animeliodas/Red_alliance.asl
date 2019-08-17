state("Red Alliance")
{
	int loading : "UnityPlayer.dll", 0x00FEA8F0, 0x20;
}

isLoading
{
	if( current.loading == 0 )
	{
		return false;
	}
		return true;
}
