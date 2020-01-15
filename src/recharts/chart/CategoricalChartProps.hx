package recharts.chart;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/chart/types.tsx
*/

typedef CategoricalChartProps<TData> = {
	@:optional var syncId:String;
	@:optional var compact:Bool;
	@:optional var width:Float;
	@:optional var height:Float;
	@:optional var data:Array<TData>; // Not documented
	@:optional var layout:LayoutType;
	@:optional var stackOffset:Offset;
	@:optional var throttleDelay:Int;
	@:optional var margin:Margins;
	@:optional var barCategoryGap:StringOrFloat;
	@:optional var barGap:StringOrFloat;
	@:optional var barSize:StringOrFloat;
	@:optional var maxBarSize:Float;
	@:optional var style:CSSProperties;
	@:optional var className:String;
	@:optional var children:ReactFragment;
	@:optional var defaultShowTooltip:Bool;
	@:optional var reverseStackOrder:Bool;
	@:optional var id:String;
	@:optional var startAngle:Float;
	@:optional var endAngle:Float;
	@:optional var cx:StringOrFloat;
	@:optional var cy:StringOrFloat;
	@:optional var innerRadius:StringOrFloat;
	@:optional var outerRadius:StringOrFloat;
}
