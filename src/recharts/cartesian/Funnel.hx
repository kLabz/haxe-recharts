package recharts.cartesian;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/cartesian/Funnel.tsx
*/

import recharts.shape.Trapezoid.TrapezoidProps;

typedef FunnelTrapezoidItem = {
	> TrapezoidProps,

	@:optional var value:StringOrFloat;
	@:optional var payload:Any;
}

typedef InternalFunnelProps = {
	@:optional var trapezoids:Array<FunnelTrapezoidItem>;
	@:optional var animationId:Int;
}

typedef FunnelProps<TData> = ForcedOverride<TrapezoidProps, {
	> InternalFunnelProps,

	@:optional var className:String;
	@:optional var dataKey:DataKey<Any>;
	@:optional var nameKey:DataKey<Any>;
	@:optional var data:Array<TData>;
	@:optional var hide:Bool;
	@:optional var activeShape:TrapezoidType;
	@:optional var legendType:LegendType;
	@:optional var tooltipType:TooltipType;
	@:optional var activeIndex:EitherType<Float, Array<Float>>;
	@:optional var onAnimationStart:Noop;
	@:optional var onAnimationEnd:Noop;
	@:optional var isAnimationActive:Bool;
	@:optional var animateNewValues:Bool;
	@:optional var animationBegin:Int;
	@:optional var animationDuration:Int;
	@:optional var animationEasing:Easing;
	@:optional var id:String;
}>

@:jsRequire('recharts', 'Funnel')
extern class Funnel<TData> extends ReactComponentOfProps<FunnelProps<TData>> {}

typedef TrapezoidType = EitherType<TrapezoidProps, ReactFragment, Any->ReactFragment>;
