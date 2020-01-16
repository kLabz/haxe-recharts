package recharts.common;

@:coreType @:enum abstract AxisInterval from Float #if recharts_enum_from_string from String #end {
	var PreserveStart = cast 'preserveStart';
	var PreserveEnd = cast 'preserveEnd';
	var PreserveStartEnd = cast 'preserveStartEnd';
}
