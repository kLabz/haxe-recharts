package recharts.common;

@:enum abstract SymbolType(String) #if recharts_enum_from_string from String #end {
	var Circle = 'circle';
	var Cross = 'cross';
	var Diamond = 'diamond';
	var Square = 'square';
	var Star = 'star';
	var Triangle = 'triangle';
	var Wye = 'wye';
}
