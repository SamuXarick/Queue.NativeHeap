class Sorted_List extends AILibrary {
	function GetAuthor()      { return "SamuXarick"; }
	function GetName()        { return "Sorted List"; }
	function GetShortName()   { return "QUNH"; }
	function GetDescription() { return "An implementation of a Sorted List Queue"; }
	function GetVersion()     { return 2; }
	function GetDate()        { return "2020-04-18"; }
	function CreateInstance() { return "Sorted_List"; }
	function GetCategory()    { return "Queue"; }
}

RegisterLibrary(Sorted_List());
