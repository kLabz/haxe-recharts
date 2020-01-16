package recharts.common;

@:enum abstract Position(String) #if recharts_enum_from_string from String #end {
	var Middle = 'middle';
	var Start = 'start';
	var End = 'end';
}
