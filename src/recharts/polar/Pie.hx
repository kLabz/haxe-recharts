package recharts.polar;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/polar/Pie.tsx
*/

import js.html.svg.PathElement;

import recharts.component.Label.LabelFactory;
import recharts.shape.Sector.SectorProps;

typedef PieDef = {
	@:optional var cx:StringOrFloat;
	@:optional var cy:StringOrFloat;
	@:optional var startAngle:Float;
	@:optional var endAngle:Float;
	@:optional var paddingAngle:Float;
	@:optional var innerRadius:StringOrFloat;
	@:optional var outerRadius:StringOrFloat;
	@:optional var cornerRadius:StringOrFloat;
}

typedef PieProps<TData> = ForcedOverride<PresentationAttributes, {
	> PieDef,

	@:optional var animationId:Int;
	@:optional var dataKey:DataKey<Any>;
	@:optional var nameKey:DataKey<Any>;
	@:optional var valueKey:DataKey<Any>;
	@:optional var blendStroke:Bool;
	@:optional var minAngle:Float;
	@:optional var legendType:LegendType;
	@:optional var tooltipType:TooltipType;
	@:optional var maxRadius:Float;
	@:optional var hide:Bool;
	@:optional var data:Array<TData>;
	@:optional var sectors:Array<PieSectorDataItem>;
	@:optional var activeShape:PieActiveShape;
	@:optional var labelLine:PieLabelLine;
	@:optional var label:LabelFactory;
	@:optional var activeIndex:Any;
	@:optional var animationEasing:Easing;
	@:optional var isAnimationActive:Bool;
	@:optional var onAnimationStart:Noop;
	@:optional var onAnimationEnd:Noop;
	@:optional var animationBegin:Int;
	@:optional var animationDuration:Int;
}>

@:jsRequire('recharts', 'Pie')
extern class Pie<TData> extends ReactComponentOfProps<PieProps<TData>> {}

typedef PieActiveShape = EitherType<SectorProps, ReactFragment, Any->ReactFragment>;

typedef PieLabelLine = EitherType<
	PresentationAttributesFor<PathElement>,
	ReactFragment,
	Any->ReactFragment, // TODO: type Any
	Bool
>;

typedef PieSectorDataItem = ForcedOverride<SectorProps, {
	@:optional var percent:Float;
	@:optional var name:StringOrFloat;
	@:optional var midAngle:Float;
	@:optional var middleRadius:Float;
	@:optional var tooltipPosition:Point;
	@:optional var value:Float;
	@:optional var paddingAngle:Float;
}>
