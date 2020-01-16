package recharts.common;

@:enum abstract Orientation(String) #if recharts_enum_from_string from String #end {
	var Top = 'top';
	var Bottom = 'bottom';
	var Left = 'left';
	var Right = 'right';
}
