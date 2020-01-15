package recharts.common;

typedef VerticalMargins = {
	@:optional var top:Int;
	@:optional var bottom:Int;
}

typedef HorizontalMargins = {
	@:optional var left:Int;
	@:optional var right:Int;
}

typedef Margins = {
	> HorizontalMargins,
	> VerticalMargins,
}
