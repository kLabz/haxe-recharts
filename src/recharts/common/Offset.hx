package recharts.common;

@:enum abstract Offset(String) #if recharts_enum_from_string from String #end {
	var Sign = "sign";
	var Expand = "expand";
	var None = "none";
	var Wriggle = "wriggle";
	var Silhouette = "silhouette";
}
