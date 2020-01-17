package d3.scale;

import react.types.EitherType;

typedef ReadonlyArray<T> = Array<T>;
typedef FloatOrValueOf = EitherType<Float, ValueOf<Float>>;
typedef ValueOf<T> = {var valueOf:Void->T;}

interface ScaleContinuousNumeric<Range, Output> {
	// TODO
	// function _(value:FloatOrValueOf):Output;

	function invert(value:FloatOrValueOf):Float;

	@:overload(function(domain:Array<FloatOrValueOf>):ScaleContinuousNumeric<Range, Output> {})
	function domain():Array<Float>;

	@:overload(function(range:ReadonlyArray<Range>):ScaleContinuousNumeric<Range, Output> {})
	function range():Array<Range>;

	function rangeRound(range:Array<FloatOrValueOf>):ScaleContinuousNumeric<Range, Output>;

	@:overload(function(clamp:Bool):ScaleContinuousNumeric<Range, Output> {})
	function clamp():Bool;

	function ticks(?count:Int):Array<Float>;
	function tickFormat(?count:Int, ?specifier:String):FloatOrValueOf->String;
	function nice(?count:Int):ScaleContinuousNumeric<Range, Output>;
	function copy():ScaleContinuousNumeric<Range, Output>;
}
