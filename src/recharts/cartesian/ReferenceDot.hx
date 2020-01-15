package recharts.cartesian;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/cartesian/ReferenceDot.tsx
*/

import recharts.cartesian.XAxis.XAxisProps;
import recharts.cartesian.YAxis.YAxisProps;
import recharts.shape.Dot.DotProps;

private typedef XAxisPropsOverride = ForcedOverride<XAxisProps, {
	var scale:D3Scale<StringOrFloat>;
}>

private typedef YAxisPropsOverride = ForcedOverride<YAxisProps, {
	var scale:D3Scale<StringOrFloat>;
}>

typedef InternalReferenceDotProps = {
	@:optional var xAxis:XAxisPropsOverride;
	@:optional var yAxis:YAxisPropsOverride;
	@:optional var clipPathId:StringOrInt;
}

typedef ReferenceDotProps = {
	> DotProps,
	> InternalReferenceDotProps,

	@:optional var isFront:Bool;
	@:optional var alwaysShow:Bool;
	@:optional var ifOverflow:IfOverflow;
	@:optional var x:StringOrFloat;
	@:optional var y:StringOrFloat;
	@:optional var className:String;
	@:optional var yAxisId:StringOrInt;
	@:optional var xAxisId:StringOrInt;
	@:optional var shape:SVGElementOrCallback;
}

@:jsRequire('recharts', 'ReferenceDot')
extern class ReferenceDot extends ReactComponentOfProps<ReferenceDotProps> {}
