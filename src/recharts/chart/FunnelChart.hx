package recharts.chart;

typedef FunnelChartProps<TData> = ForcedOverride<CategoricalChartProps<TData>, {
	var width:Float;
	var height:Float;
}>

@:jsRequire('recharts', 'FunnelChart')
extern class FunnelChart<TData> extends ReactComponentOfProps<FunnelChartProps<TData>> {}
