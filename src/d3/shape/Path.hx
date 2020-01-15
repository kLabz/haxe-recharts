package d3.shape;

interface Path {
	function moveTo(x:Float, y:Float):Void;
	function closePath():Void;
	function lineTo(x:Float, y:Float):Void;
	function quadraticCurveTo(cpx:Float, cpy:Float, x:Float, y:Float):Void;
	function bezierCurveTo(cpx1:Float, cpy1:Float, cpx2:Float, cpy2:Float, x:Float, y:Float):Void;
	function arcTo(x1:Float, y1:Float, x2:Float, y2:Float, radius:Float):Void;
	function arc(x:Float, y:Float, radius:Float, startAngle:Float, endAngle:Float, ?anticlockwise:Bool):Void;
	function rect(x:Float, y:Float, w:Float, h:Float):Void;
	function toString():String;
}
