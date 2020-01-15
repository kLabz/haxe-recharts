package recharts.cartesian;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/cartesian/Bar.tsx
*/

import js.html.svg.PathElement;

import recharts.cartesian.XAxis.XAxisProps;
import recharts.cartesian.YAxis.YAxisProps;
import recharts.shape.Rectangle.RectangleProps;

private typedef XAxisPropsOverride = ForcedOverride<XAxisProps, {
	var scale:D3Scale<StringOrFloat>;
	@:optional var x:Float;
	@:optional var width:Float;
}>

private typedef YAxisPropsOverride = ForcedOverride<YAxisProps, {
	var scale:D3Scale<StringOrFloat>;
	@:optional var y:Float;
	@:optional var height:Float;
}>

typedef BarRectangleItem = {
	> RectangleProps,

	@:optional var value:Float;
	@:optional var background:ViewBox;
}

typedef InternalBarProps = {
	@:optional var xAxis:XAxisPropsOverride;
	@:optional var yAxis:YAxisPropsOverride;
	@:optional var data:Array<BarRectangleItem>;
	@:optional var top:Float;
	@:optional var left:Float;
}

typedef BarProps = ForcedOverride<PresentationAttributesFor<PathElement>, {
	> InternalBarProps,

	@:optional var className:String;
	@:optional var layout:LayoutType;
	@:optional var xAxisId:StringOrInt;
	@:optional var yAxisId:StringOrInt;
	@:optional var stackId:StringOrInt;
	@:optional var barSize:Int;
	@:optional var unit:StringOrInt;
	@:optional var name:StringOrInt;
	@:optional var dataKey:DataKey<Any>;
	@:optional var tooltipType:TooltipType;
	@:optional var legendType:LegendType;
	@:optional var minPointSize:Float;
	@:optional var maxBarSize:Float;
	@:optional var hide:Bool;
	@:optional var shape:SVGElementOrCallback;
	@:optional var background:RectangleShapeType;
	@:optional var onAnimationStart:Noop;
	@:optional var onAnimationEnd:Noop;
	@:optional var isAnimationActive:Bool;
	@:optional var animationBegin:Int;
	@:optional var animationDuration:Int;
	@:optional var animationEasing:Easing;
	@:optional var animationId:Int;
	@:optional var id:String;
}>

@:jsRequire('recharts', 'Bar')
extern class Bar extends ReactComponentOfProps<BarProps> {}

@:coreType abstract RectangleShapeType
from ReactFragment from Any->ReactFragment from RectangleProps from Bool {}
