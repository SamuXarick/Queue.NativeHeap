class Native_Heap extends AILibrary {
	function GetAuthor()      { return "SamuXarick"; }
	function GetName()        { return "Native Heap"; }
	function GetShortName()   { return "QUNH"; }
	function GetDescription() { return "An implementation of a Native Heap"; }
	function GetVersion()     { return 1; }
	function GetDate()        { return "2020-04-12"; }
	function CreateInstance() { return "Native_Heap"; }
	function GetCategory()    { return "Queue"; }
}

RegisterLibrary(Native_Heap());
