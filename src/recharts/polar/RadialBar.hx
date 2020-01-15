package recharts.polar;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/polar/RadialBar.tsx
*/

import recharts.shape.Sector.SectorProps;

typedef RadialBarProps = ForcedOverride<PresentationAttributes, {
	@:optional var animationId:Int;
	@:optional var className:String;
	@:optional var angleAxisId:StringOrInt;
	@:optional var radiusAxisId:StringOrInt;
	@:optional var startAngle:Float;
	@:optional var endAngle:Float;
	@:optional var shape:FragmentOrCallback;
	@:optional var activeShape:FragmentOrCallback;
	@:optional var activeIndex:Int;
	@:optional var dataKey:DataKey<Any>;
	@:optional var cornerRadius:StringOrFloat;
	@:optional var forceCornerRadius:Bool;
	@:optional var cornerIsExternal:Bool;
	@:optional var minPointSize:Float;
	@:optional var maxPointSize:Float;
	@:optional var data:Array<RadialBarDataItem>;
	@:optional var legendType:LegendType;
	@:optional var tooltipType:TooltipType;
	@:optional var hide:Bool;
	@:optional var background:RadialBarBackground;
	@:optional var isAnimationActive:Bool;
	@:optional var animationBegin:Int;
	@:optional var animationDuration:Int;
	@:optional var animationEasing:Easing;
}>

@:jsRequire('recharts', 'RadialBar')
extern class RadialBar extends ReactComponentOfProps<RadialBarProps> {}

typedef RadialBarDataItem = {
	> SectorProps,

	@:optional var value:Any;
	@:optional var payload:Any;
	@:optional var background:SectorProps;
}

@:coreType abstract RadialBarBackground
from ReactFragment from RadialBarProps->ReactFragment from SectorProps from Bool {}
