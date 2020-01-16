package recharts.common;

typedef VerticalMargins = {
	@:optional var top:Float;
	@:optional var bottom:Float;
}

typedef HorizontalMargins = {
	@:optional var left:Float;
	@:optional var right:Float;
}

typedef Margins = {
	> HorizontalMargins,
	> VerticalMargins,
}
