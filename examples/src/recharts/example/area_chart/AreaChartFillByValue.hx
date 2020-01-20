package recharts.example.area_chart;

import recharts.cartesian.Area;
import recharts.cartesian.CartesianGrid;
import recharts.cartesian.XAxis;
import recharts.cartesian.YAxis;
import recharts.chart.AreaChart;
import recharts.component.Tooltip;

class AreaChartFillByValue extends ReactComponentOfProps<Empty> {
	override function render():ReactFragment {
		var data = [
			{name: 'Page A', uv: 4000, pv: 2400, amt: 2400},
			{name: 'Page B', uv: 3000, pv: 1398, amt: 2210},
			{name: 'Page C', uv: -1000, pv: 9800, amt: 2290},
			{name: 'Page D', uv: 500, pv: 3908, amt: 2000},
			{name: 'Page E', uv: -2000, pv: 4800, amt: 2181},
			{name: 'Page F', uv: -250, pv: 3800, amt: 2500},
			{name: 'Page G', uv: 3490, pv: 4300, amt: 2100}
		];

		var off = gradientOffset(data);

		return jsx('
			<AreaChart
				width={500}
				height={400}
				data={data}
				margin={{top: 10, right: 30, left: 0, bottom: 0}}
			>
				<CartesianGrid strokeDasharray="3 3" />
				<XAxis dataKey="name" />
				<YAxis />
				<Tooltip />
				<defs>
					<linearGradient id="splitColor" x1="0" y1="0" x2="0" y2="1">
						<stop offset={off} stopColor="green" stopOpacity={1} />
						<stop offset={off} stopColor="red" stopOpacity={1} />
					</linearGradient>
				</defs>
				<Area type={Monotone} dataKey="uv" stroke="#000" fill="url(#splitColor)" />
			</AreaChart>
		');
	}

	static function gradientOffset<T:{uv:Int}>(data:Array<T>):Float {
		var dataMin = Math.POSITIVE_INFINITY;
		var dataMax = Math.NEGATIVE_INFINITY;

		var values = [for (d in data) {
			var value = d.uv;
			if (value < dataMin) dataMin = value;
			if (value > dataMax) dataMax = value;
			value;
		}];

		if (dataMax <= 0) return 0;
		if (dataMin >= 0) return 1;
		return dataMax / (dataMax - dataMin);
	}
}
