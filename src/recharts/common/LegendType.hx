package recharts.common;

@:enum abstract LegendType(String) #if recharts_enum_from_string from String #end {
	var Plainline = 'plainline';
	var Line = 'line';
	var Square = 'square';
	var Rect = 'rect';
	var Circle = 'circle';
	var Cross = 'cross';
	var Diamond = 'diamond';
	var Star = 'star';
	var Triangle = 'triangle';
	var Wye = 'wye';
	var None = 'none';
}
