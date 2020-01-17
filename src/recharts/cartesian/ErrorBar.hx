package recharts.cartesian;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/cartesian/ErrorBar.tsx
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

typedef ErrorBarDataItem = {
	@:optional var x:Float;
	@:optional var y:Float;
	@:optional var value:Float;
	@:optional var errorVal:EitherType<Float, Array<Float>>;
}

typedef InternalErrorBarProps<TData> = {
	@:optional var xAxis:XAxisPropsOverride;
	@:optional var yAxis:YAxisPropsOverride;
	@:optional var data:Array<TData>;
	@:optional var layout:LayoutType;
	@:optional var dataPointFormatter:Any->DataKey<Any>->ErrorBarDataItem;
	@:optional var offset:Float;
}

typedef ErrorBarProps<TData> = {
	> PresentationAttributesFor<LineElement>,
	> InternalErrorBarProps<TData>,

	@:optional var dataKey:DataKey<Any>;
	@:optional var width:Float;
	@:optional var direction:XOrY;
}

@:jsRequire('recharts', 'ErrorBar')
extern class ErrorBar extends ReactComponentOfProps<ErrorBarProps> {}

@:enum abstract XOrY(String) #if recharts_enum_from_string from String #end {
	var X = 'x';
	var Y = 'y';
}
