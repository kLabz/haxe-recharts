package recharts.shape;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/shape/Trapezoid.tsx
*/

import js.html.svg.PathElement;

typedef TrapezoidProps = ForcedOverride<PresentationAttributesFor<PathElement>, {
	@:optional var className:String;
	@:optional var x:Float;
	@:optional var y:Float;
	@:optional var upperWidth:Float;
	@:optional var lowerWidth:Float;
	@:optional var height:Float;
	@:optional var isUpdateAnimationActive:Bool;
	@:optional var animationBegin:Int;
	@:optional var animationDuration:Int;
	@:optional var animationEasing:Easing;
}>

@:jsRequire('recharts', 'Trapezoid')
extern class Trapezoid extends ReactComponentOfProps<TrapezoidProps> {}
