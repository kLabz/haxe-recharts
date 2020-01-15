package recharts.polar;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/polar/PolarAngleAxis.tsx
*/

import haxe.extern.EitherType;
import js.html.svg.TextElement;

typedef PolarAngleAxisProps = ForcedOverride<PresentationAttributesFor<TextElement>, {
	> BaseAxisProps,

	@:optional var angleAxisId:StringOrInt;
	@:optional var cx:Float;
	@:optional var cy:Float;
	@:optional var radius:Float;
	@:optional var axisLineType:AxisLineType;
	@:optional var ticks:Array<TickItem>;
	@:optional var orientation:PolarAngleAxisOrientation;
}>

@:jsRequire('recharts', 'PolarAngleAxis')
extern class PolarAngleAxis extends ReactComponentOfProps<PolarAngleAxisProps> {}

@:enum abstract AxisLineType(String) {
	var Polygon = 'polygon';
	var Circle = 'circle';
}

@:enum abstract PolarAngleAxisOrientation(String) {
	var Inner = 'inner';
	var Outer = 'outer';
}
