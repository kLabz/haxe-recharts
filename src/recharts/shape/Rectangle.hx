package recharts.shape;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/shape/Rectangle.tsx
*/

import haxe.extern.EitherType;
import js.html.svg.PathElement;

typedef RectangleProps = ForcedOverride<PresentationAttributesFor<PathElement>, {
	@:optional var className:String;
	@:optional var x:Float;
	@:optional var y:Float;
	@:optional var width:Float;
	@:optional var height:Float;
	@:optional var radius:EitherType<Float, Array<Float>>;
	@:optional var isAnimationActive:Bool;
	@:optional var isUpdateAnimationActive:Bool;
	@:optional var animationBegin:Int;
	@:optional var animationDuration:Int;
	@:optional var animationEasing:Easing;
}>

@:jsRequire('recharts', 'Rectangle')
extern class Rectangle extends ReactComponentOfProps<RectangleProps> {}
