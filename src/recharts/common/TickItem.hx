package recharts.common;

typedef TickItem = {
	@:optional var value:StringOrFloat;
	@:optional var coordinate:Float;
	@:optional var index:Int;

	// Not documented
	@:optional var offset:Float;
}
