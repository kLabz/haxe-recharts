package recharts.cartesian;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/cartesian/YAxis.tsx
*/

typedef YAxisProps = ForcedOverride<PresentationAttributes, {
	> BaseAxisProps<CartesianAxisTickProps>,

	@:optional var yAxisId:StringOrInt;
	@:optional var ticks:Array<StringOrFloat>;
	@:optional var width:Float;
	@:optional var height:Float;
	@:optional var mirror:Bool;
	@:optional var orientation:YOrientation;
	@:optional var padding:VerticalMargins;
	@:optional var minTickGap:Float;
	@:optional var interval:AxisInterval;
	@:optional var reversed:Bool;
}>

@:jsRequire('recharts', 'YAxis')
extern class YAxis extends ReactComponentOfProps<YAxisProps> {}

@:enum abstract YOrientation(String) #if recharts_enum_from_string from String #end {
	var Left = 'left';
	var Right = 'right';
}
