package recharts.common;

@:enum abstract HorizontalAlignmentType(String) #if recharts_enum_from_string from String #end {
	var Center = 'center';
	var Left = 'left';
	var Right = 'right';
}
