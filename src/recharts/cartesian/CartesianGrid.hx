package recharts.cartesian;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/cartesian/CartesianGrid.tsx
*/

import js.html.svg.LineElement;
import recharts.cartesian.XAxis.XAxisProps;
import recharts.cartesian.YAxis.YAxisProps;

private typedef XAxisPropsOverride = ForcedOverride<XAxisProps, {
	var scale:D3Scale<StringOrFloat>;
}>

private typedef YAxisPropsOverride = ForcedOverride<YAxisProps, {
	var scale:D3Scale<StringOrFloat>;
}>

typedef InternalCartesianGridProps = {
	@:optional var x:Float;
	@:optional var y:Float;
	@:optional var width:Float;
	@:optional var height:Float;
	@:optional var horizontalCoordinatesGenerator:Any->Array<Float>;
	@:optional var verticalCoordinatesGenerator:Any->Array<Float>;
	@:optional var xAxis:XAxisPropsOverride;
	@:optional var yAxis:YAxisPropsOverride;
	@:optional var offset:ChartOffset;
	@:optional var chartWidth:Float;
	@:optional var chartHeight:Float;
}

typedef CartesianGridProps = ForcedOverride<PresentationAttributes, {
	> InternalCartesianGridProps,

	@:optional var horizontal:GridLineType;
	@:optional var vertical:GridLineType;
	@:optional var horizontalPoints:Array<Float>;
	@:optional var verticalPoints:Array<Float>;
	@:optional var horizontalFill:Array<String>;
	@:optional var verticalFill:Array<String>;
}>

@:jsRequire('recharts', 'CartesianGrid')
extern class CartesianGrid extends ReactComponentOfProps<CartesianGridProps> {}

typedef GridLineType = EitherType<
	PresentationAttributesFor<LineElement>,
	ReactFragment,
	Any->ReactFragment,
	Bool
>;
