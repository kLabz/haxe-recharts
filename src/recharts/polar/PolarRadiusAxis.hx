package recharts.polar;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/polar/PolarRadiusAxis.tsx
*/

typedef PolarRadiusAxisProps = ForcedOverride<PresentationAttributes, {
	> BaseAxisProps<PolarRadiusAxisTickProps>,

	@:optional var cx:Float;
	@:optional var cy:Float;
	@:optional var radiusAxisId:StringOrInt;
	@:optional var angle:Float;
	@:optional var orientation:PolarRadiusAxisOrientation;
	@:optional var ticks:Array<TickItem>;
}>

@:jsRequire('recharts', 'PolarRadiusAxis')
extern class PolarRadiusAxis extends ReactComponentOfProps<PolarRadiusAxisProps> {}

@:enum abstract PolarRadiusAxisOrientation(String) #if recharts_enum_from_string from String #end {
	var Left = 'left';
	var Right = 'right';
	var Middle = 'middle';
}

typedef PolarRadiusAxisTickProps = ForcedOverride<PolarRadiusAxisProps, {
	> Point,

	var index:Int;
	var payload:TickItem;
}>
