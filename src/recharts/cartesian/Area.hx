package recharts.cartesian;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/cartesian/Area.tsx
*/

import recharts.cartesian.XAxis.XAxisProps;
import recharts.cartesian.YAxis.YAxisProps;
import recharts.component.Label.LabelFactory;
import recharts.shape.Curve.CurveType;
import recharts.shape.Dot.DotProps;

private typedef XAxisPropsOverride = ForcedOverride<XAxisProps, {
	var scale:D3Scale<StringOrFloat>;
}>

private typedef YAxisPropsOverride = ForcedOverride<YAxisProps, {
	var scale:D3Scale<StringOrFloat>;
}>

typedef InternalAreaProps = {
	@:optional var xAxis:XAxisPropsOverride;
	@:optional var yAxis:YAxisPropsOverride;
	@:optional var top:Float;
	@:optional var left:Float;
	@:optional var width:Float;
	@:optional var height:Float;
	@:optional var baseLine:BaseLine;
}

typedef AreaProps = ForcedOverride<PresentationAttributes, {
	> InternalAreaProps,

	@:optional var className:String;
	@:optional var dataKey:DataKey<Any>;
	@:optional var type:CurveType;
	@:optional var unit:StringOrFloat;
	@:optional var name:StringOrFloat;
	@:optional var xAxisId:StringOrInt;
	@:optional var yAxisId:StringOrInt;
	@:optional var stackId:StringOrInt;
	@:optional var legendType:LegendType;
	@:optional var tooltipType:TooltipType;
	@:optional var connectNulls:Bool;
	@:optional var activeDot:AreaDot;
	@:optional var dot:AreaDot;
	@:optional var label:LabelFactory;
	@:optional var layout:LayoutType;
	@:optional var hide:Bool;
	@:optional var baseValue:BaseValue;
	@:optional var isRange:Bool;
	@:optional var onAnimationStart:Noop;
	@:optional var onAnimationEnd:Noop;
	@:optional var isAnimationActive:Bool;
	@:optional var animationBegin:Int;
	@:optional var animationDuration:Int;
	@:optional var animationEasing:Easing;
	@:optional var animationId:Int;
	@:optional var id:String;
}>

@:jsRequire('recharts', 'Area')
extern class Area extends ReactComponentOfProps<AreaProps> {}

@:coreType @:enum abstract BaseValue from Float #if recharts_enum_from_string from String #end {
	var DataMin = cast 'dataMin';
	var DataMax = cast 'dataMax';
}

typedef AreaDot = EitherType<DotProps, ReactFragment, Any->ReactFragment, Bool>;
