package recharts.common;

@:enum abstract BaseAxisType(String) #if recharts_enum_from_string from String #end {
	var Number = 'number';
	var Category = 'category';
}
