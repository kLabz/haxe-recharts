package recharts.cartesian;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/cartesian/ReferenceLine.tsx
*/

import js.html.svg.LineElement;

import recharts.cartesian.XAxis.XAxisProps;
import recharts.cartesian.YAxis.YAxisProps;

private typedef XAxisPropsOverride = ForcedOverride<XAxisProps, {
	var scale:D3Scale<StringOrFloat>;
}>

private typedef YAxisPropsOverride = ForcedOverride<YAxisProps, {
	var scale:D3Scale<StringOrFloat>;
}>

typedef InternalReferenceLineProps = {
	@:optional var viewBox:ViewBox;
	@:optional var xAxis:XAxisPropsOverride;
	@:optional var yAxis:YAxisPropsOverride;
	@:optional var clipPathId:StringOrInt;
}

typedef ReferenceLineProps = ForcedOverride<PresentationAttributesFor<LineElement>, {
	> InternalReferenceLineProps,

	@:optional var isFront:Bool;
	@:optional var alwaysShow:Bool;
	@:optional var ifOverflow:IfOverflow;
	@:optional var x:StringOrFloat;
	@:optional var y:StringOrFloat;
	@:optional var segment:Array<PointOf<StringOrFloat>>;
	@:optional var position:Position;
	@:optional var className:StringOrFloat;
	@:optional var xAxisId:StringOrInt;
	@:optional var yAxisId:StringOrInt;
	@:optional var shape:SVGElementOrCallback;
}>;

@:jsRequire('recharts', 'ReferenceLine')
extern class ReferenceLine extends ReactComponentOfProps<ReferenceLineProps> {}
