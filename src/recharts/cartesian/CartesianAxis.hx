package recharts.cartesian;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/cartesian/CartesianAxis.tsx
*/

import js.html.svg.LineElement;
import js.html.svg.TextElement;

typedef CartesianTickItem = {
	> TickItem,

	@:optional var tickCoord:Float;
	@:optional var tickSize:Float;
	@:optional var isShow:Bool;
}

typedef CartesianAxisProps = ForcedOverride<PresentationAttributes, {
	@:optional var className:String;
	@:optional var x:Float;
	@:optional var y:Float;
	@:optional var width:Float;
	@:optional var height:Float;
	@:optional var unit:StringOrFloat;
	@:optional var orientation:Orientation;
	@:optional var viewBox:ViewBox;
	@:optional var tick:AxisTick<CartesianAxisTickProps>;
	@:optional var axisLine:EitherType<Bool, PresentationAttributesFor<LineElement>>;
	@:optional var tickLine:EitherType<Bool, PresentationAttributesFor<TextElement>>;
	@:optional var mirror:Bool;
	@:optional var tickMargin:Float;
	@:optional var hide:Bool;
	@:optional var minTickGap:Float;
	@:optional var ticks:Array<CartesianTickItem>;
	@:optional var tickSize:Float;
	@:optional var tickFormatter:Any->String;
	@:optional var ticksGenerator:?CartesianAxisProps->Array<CartesianTickItem>;
	@:optional var interval:AxisInterval;
}>

@:jsRequire('recharts', 'CartesianAxis')
extern class CartesianAxis extends ReactComponentOfProps<CartesianAxisProps> {}
