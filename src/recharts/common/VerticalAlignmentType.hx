package recharts.common;

@:enum abstract VerticalAlignmentType(String) #if recharts_enum_from_string from String #end {
	var Top = 'top';
	var Middle = 'middle';
	var Bottom = 'bottom';
}
