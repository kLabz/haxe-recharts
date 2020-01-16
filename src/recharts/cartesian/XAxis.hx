package recharts.cartesian;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/cartesian/XAxis.tsx
*/

typedef XAxisProps = {
	> BaseAxisProps,

	@:optional var xAxisId:StringOrInt;
	@:optional var width:Float;
	@:optional var height:Float;
	@:optional var mirror:Bool;
	@:optional var orientation:XOrientation;
	@:optional var ticks:Array<StringOrFloat>;
	@:optional var padding:HorizontalMargins;
	@:optional var minTickGap:Float;
	@:optional var interval:AxisInterval;
	@:optional var reversed:Bool;
}

@:jsRequire('recharts', 'XAxis')
extern class XAxis extends ReactComponentOfProps<XAxisProps> {}

@:enum abstract XOrientation(String) #if recharts_enum_from_string from String #end {
	var Bottom = 'bottom';
	var Top = 'top';
}
