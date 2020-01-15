package recharts.polar;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/polar/PolarRadiusAxis.tsx
*/

typedef PolarRadiusAxisProps = ForcedOverride<PresentationAttributes, {
	> BaseAxisProps,

	@:optional var cx:Float;
	@:optional var cy:Float;
	@:optional var radiusAxisId:StringOrInt;
	@:optional var angle:Float;
	@:optional var orientation:PolarRadiusAxisOrientation;
	@:optional var ticks:Array<TickItem>;
}>

@:jsRequire('recharts', 'PolarRadiusAxis')
extern class PolarRadiusAxis extends ReactComponentOfProps<PolarRadiusAxisProps> {}

@:enum abstract PolarRadiusAxisOrientation(String) {
	var Left = 'left';
	var Right = 'right';
	var Middle = 'middle';
}
