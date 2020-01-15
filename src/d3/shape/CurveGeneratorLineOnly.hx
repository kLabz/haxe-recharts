package d3.shape;

interface CurveGeneratorLineOnly {
	function lineStart():Void;
	function lineEnd():Void;
	function point(x:Float, y:Float):Void;
}
