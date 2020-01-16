package recharts.polar;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/polar/PolarGrid.tsx
*/

import js.html.svg.PathElement;

typedef PolarGridProps = ForcedOverride<PresentationAttributesFor<PathElement>, {
	@:optional var cx:Float;
	@:optional var cy:Float;
	@:optional var innerRadius:Float;
	@:optional var outerRadius:Float;
	@:optional var polarAngles:Array<Float>;
	@:optional var polarRadius:Array<Float>;
	@:optional var gridType:PolarGridType;
}>

@:jsRequire('recharts', 'PolarGrid')
extern class PolarGrid extends ReactComponentOfProps<PolarGridProps> {}

@:enum abstract PolarGridType(String) #if recharts_enum_from_string from String #end {
	var Polygon = 'polygon';
	var Circle = 'circle';
}
