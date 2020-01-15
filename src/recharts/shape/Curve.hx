package recharts.shape;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/shape/Curve.tsx
*/

import d3.shape.CurveFactory;
import js.html.svg.PathElement;

typedef CurveProps = ForcedOverride<PresentationAttributesFor<PathElement>, {
	@:optional var className:String;
	@:optional var type:CurveType;
	@:optional var layout:LayoutType;
	@:optional var baseLine:BaseLine;
	@:optional var points:Array<Point>;
	@:optional var connectNulls:Bool;
	@:optional var path:String;
	@:optional var pathRef:PathElement->Void;
}>

@:jsRequire('recharts', 'Curve')
extern class Curve extends ReactComponentOfProps<CurveProps> {}

@:coreType
@:enum abstract CurveType from CurveFactory {
	var Basis = cast 'basis';
	var BasisClosed = cast 'basisClosed';
	var BasisOpen = cast 'basisOpen';
	var Linear = cast 'linear';
	var LinearClosed = cast 'linearClosed';
	var Natural = cast 'natural';
	var MonotoneX = cast 'monotoneX';
	var MonotoneY = cast 'monotoneY';
	var Monotone = cast 'monotone';
	var Step = cast 'step';
	var StepBefore = cast 'stepBefore';
	var StepAfter = cast 'stepAfter';
	var CurveFactory = cast 'CurveFactory';
}
