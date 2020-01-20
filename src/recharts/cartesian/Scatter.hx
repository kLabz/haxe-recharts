package recharts.cartesian;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/cartesian/Scatter.tsx
*/

import recharts.cartesian.XAxis.XAxisProps;
import recharts.cartesian.YAxis.YAxisProps;
import recharts.cartesian.ZAxis.ZAxisProps;
import recharts.shape.Curve.CurveProps;
import recharts.shape.Symbols.SymbolsProps;

private typedef XAxisPropsOverride = ForcedOverride<XAxisProps, {
	var scale:D3Scale<StringOrFloat>;
}>

private typedef YAxisPropsOverride = ForcedOverride<YAxisProps, {
	var scale:D3Scale<StringOrFloat>;
}>

private typedef ZAxisPropsOverride = ForcedOverride<ZAxisProps, {
	var scale:D3Scale<StringOrFloat>;
}>

typedef ScatterPointNode = {
	@:optional var x:StringOrFloat;
	@:optional var y:StringOrFloat;
	@:optional var z:StringOrFloat;
}

typedef ScatterPointItem = {
	@:optional var cx:Float;
	@:optional var cy:Float;
	@:optional var size:Float;
	@:optional var node:ScatterPointNode;
	@:optional var payload:Any;
}

typedef ScatterProps<TData> = ForcedOverride<PresentationAttributes, {
	@:optional var data:Array<TData>;
	@:optional var xAxisId:StringOrInt;
	@:optional var yAxisId:StringOrInt;
	@:optional var zAxisId:StringOrInt;
	@:optional var left:Float;
	@:optional var top:Float;
	@:optional var xAxis:XAxisPropsOverride;
	@:optional var yAxis:YAxisPropsOverride;
	@:optional var zAxis:ZAxisPropsOverride;
	@:optional var dataKey:DataKey<Any>;
	@:optional var line:ScatterLine;
	@:optional var lineType:ScatterLineType;
	@:optional var legendType:LegendType;
	@:optional var tooltipType:TooltipType;
	@:optional var className:String;
	@:optional var name:StringOrFloat;
	@:optional var activeIndex:Int;
	@:optional var activeShape:SymbolsType;
	@:optional var shape:SVGElementOrCallback;
	@:optional var points:Array<ScatterPointItem>;
	@:optional var hide:Bool;
	@:optional var isAnimationActive:Bool;
	@:optional var animationId:Int;
	@:optional var animationBegin:Int;
	@:optional var animationDuration:Int;
	@:optional var animationEasing:Easing;
}>

@:jsRequire('recharts', 'Scatter')
extern class Scatter<TData> extends ReactComponentOfProps<ScatterProps<TData>> {}

typedef ScatterLine = EitherType<CurveProps, ReactFragment, Any->ReactFragment, Bool>;
typedef SymbolsType = EitherType<SymbolsProps, ReactFragment, Any->ReactFragment>;

@:enum abstract ScatterLineType(String) #if recharts_enum_from_string from String #end {
	var Fitting = 'fitting';
	var Joint = 'joint';
}
