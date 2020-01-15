package recharts.cartesian;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/cartesian/ReferenceArea.tsx
*/

import recharts.cartesian.XAxis.XAxisProps;
import recharts.cartesian.YAxis.YAxisProps;
import recharts.shape.Rectangle.RectangleProps;

private typedef XAxisPropsOverride = ForcedOverride<XAxisProps, {
	var scale:D3Scale<StringOrFloat>;
}>

private typedef YAxisPropsOverride = ForcedOverride<YAxisProps, {
	var scale:D3Scale<StringOrFloat>;
}>

typedef InternalReferenceAreaProps = {
	@:optional var viewBox:ViewBox;
	@:optional var xAxis:XAxisPropsOverride;
	@:optional var yAxis:YAxisPropsOverride;
	@:optional var clipPathId:StringOrInt;
}

typedef ReferenceAreaProps = ForcedOverride<RectangleProps, {
	> InternalReferenceAreaProps,

	@:optional var isFront:Bool;
	@:optional var alwaysShow:Bool;
	@:optional var ifOverflow:IfOverflow;
	@:optional var x1:StringOrFloat;
	@:optional var x2:StringOrFloat;
	@:optional var y1:StringOrFloat;
	@:optional var y2:StringOrFloat;
	@:optional var className:String;
	@:optional var yAxisId:StringOrInt;
	@:optional var xAxisId:StringOrInt;
	@:optional var shape:SVGElementOrCallback;
}>

@:jsRequire('recharts', 'ReferenceArea')
extern class ReferenceArea extends ReactComponentOfProps<ReferenceAreaProps> {}
