package recharts.polar;

/**
	Manually +erived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/polar/Radar.tsx
*/

import js.html.svg.PolygonElement;
import recharts.shape.Dot.DotProps;

typedef RadarProps = ForcedOverride<PresentationAttributes, {
	@:optional var className:String;
	@:optional var dataKey:DataKey<Any>;
	@:optional var angleAxisId:StringOrInt;
	@:optional var radiusAxisId:StringOrInt;
	@:optional var points:Array<RadarPoint>;
	@:optional var shape:FragmentOrCallback; // Close enough
	@:optional var activeDot:RadarDot;
	@:optional var dot:RadarDot;
	@:optional var legendType:LegendType;
	@:optional var tooltipType:TooltipType;
	@:optional var hide:Bool;
	@:optional var label:Any; // Not typed upstream..
	@:optional var animationBegin:Int;
	@:optional var animationDuration:Int;
	@:optional var isAnimationActive:Bool;
	@:optional var animationId:Int;
	@:optional var animationEasing:Easing;
	@:optional var onAnimationStart:Noop;
	@:optional var onAnimationEnd:Noop;
	@:optional var onMouseEnter:HandlerOrVoid<Any->MouseEvent<PolygonElement>->Void>;
	@:optional var onMouseLeave:HandlerOrVoid<Any->MouseEvent<PolygonElement>->Void>;
}>

@:jsRequire('recharts', 'Radar')
extern class Radar extends ReactComponentOfProps<RadarProps> {}

typedef RadarPoint = {
	var x:Float;
	var y:Float;
	@:optional var cx:Float;
	@:optional var cy:Float;
	@:optional var angle:Float;
	@:optional var radius:Float;
	@:optional var value:Float;
	@:optional var payload:Any;
}

@:coreType abstract RadarDot
from ReactFragment from Any->ReactFragment from DotProps from Bool {}
