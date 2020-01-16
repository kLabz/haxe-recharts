package recharts.common;

@:enum abstract LayoutType(String) #if recharts_enum_from_string from String #end {
	var Horizontal = "horizontal";
	var Vertical = "vertical";
}
