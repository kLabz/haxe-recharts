package recharts.common;

// TODO: type function
@:coreType
enum abstract ScaleType from haxe.Constraints.Function {
	var Auto = cast 'auto';
	var Linear = cast 'linear';
	var Pow = cast 'pow';
	var Sqrt = cast 'sqrt';
	var Log = cast 'log';
	var Identity = cast 'identity';
	var Time = cast 'time';
	var Band = cast 'band';
	var Point = cast 'point';
	var Ordinal = cast 'ordinal';
	var Quantile = cast 'quantile';
	var Quantize = cast 'quantize';
	var Utc = cast 'utc';
	var Sequential = cast 'sequential';
	var Threshold = cast 'threshold';
}
