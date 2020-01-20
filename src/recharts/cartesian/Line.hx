package recharts.cartesian;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/cartesian/Line.tsx
*/

import js.html.svg.SVGElement;

import recharts.cartesian.XAxis.XAxisProps;
import recharts.cartesian.YAxis.YAxisProps;
import recharts.shape.Curve.CurveProps;
import recharts.shape.Curve.CurveType;
import recharts.shape.Dot.DotProps;

private typedef XAxisPropsOverride = ForcedOverride<XAxisProps, {
	var scale:D3Scale<StringOrFloat>;
}>

private typedef YAxisPropsOverride = ForcedOverride<YAxisProps, {
	var scale:D3Scale<StringOrFloat>;
}>

typedef LinePointItem = {
	> Point,

	@:optional var value:Float;
	@:optional var payload:Any;
}

typedef InternalLineProps = {
	@:optional var top:Float;
	@:optional var left:Float;
	@:optional var width:Float;
	@:optional var height:Float;
	@:optional var points:Array<LinePointItem>;
	@:optional var xAxis:XAxisPropsOverride;
	@:optional var yAxis:YAxisPropsOverride;
}

typedef LineProps = ForcedOverride<CurveProps, {
	> InternalLineProps,

	@:optional var className:String;
	@:optional var type:CurveType;
	@:optional var unit:StringOrFloat;
	@:optional var name:StringOrFloat;
	@:optional var yAxisId:StringOrInt;
	@:optional var xAxisId:StringOrInt;
	@:optional var dataKey:DataKey<Any>;
	@:optional var legendType:LegendType;
	@:optional var tooltipType:TooltipType;
	@:optional var layout:LayoutType;
	@:optional var connectNulls:Bool;
	@:optional var hide:Bool;
	@:optional var activeDot:LineDot;
	@:optional var dot:LineDot;
	@:optional var onAnimationStart:Noop;
	@:optional var onAnimationEnd:Noop;
	@:optional var isAnimationActive:Bool;
	@:optional var animationBegin:Int;
	@:optional var animationDuration:Int;
	@:optional var animationEasing:Easing;
	@:optional var animationId:Int;
	@:optional var id:String;
}>

@:jsRequire('recharts', 'Line')
extern class Line extends ReactComponentOfProps<LineProps> {}

typedef LineDot = EitherType<ReactFragment, Any->ReactFragment, DotProps, Bool>;
