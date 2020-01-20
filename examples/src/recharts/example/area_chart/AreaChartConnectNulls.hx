package recharts.example.area_chart;

import recharts.cartesian.Area;
import recharts.cartesian.CartesianGrid;
import recharts.cartesian.XAxis;
import recharts.cartesian.YAxis;
import recharts.chart.AreaChart;
import recharts.component.Tooltip;

typedef TData = {name:String, ?uv:Int, ?pv:Int, ?amt:Int}

class AreaChartConnectNulls extends ReactComponentOfProps<Empty> {
	override function render():ReactFragment {
		var data:Array<TData> = [
			{name: 'Page A', uv: 4000, pv: 2400, amt: 2400},
			{name: 'Page B', uv: 3000, pv: 1398, amt: 2210},
			{name: 'Page C', uv: 2000, pv: 9800, amt: 2290},
			{name: 'Page D'},
			{name: 'Page E', uv: 1890, pv: 4800, amt: 2181},
			{name: 'Page F', uv: 2390, pv: 3800, amt: 2500},
			{name: 'Page G', uv: 3490, pv: 4300, amt: 2100}
		];

		return jsx('
			<div>
				<AreaChart
					width={500}
					height={200}
					data={data}
					margin={{top: 10, right: 30, left: 0, bottom: 0}}
				>
					<CartesianGrid strokeDasharray="3 3" />
					<XAxis dataKey="name" />
					<YAxis />
					<Tooltip />
					<Area type={Monotone} dataKey="uv" stroke="#8884d8" fill="#8884d8" />
				</AreaChart>

				<AreaChart
					width={500}
					height={200}
					data={data}
					margin={{top: 10, right: 30, left: 0, bottom: 0}}
				>
					<CartesianGrid strokeDasharray="3 3" />
					<XAxis dataKey="name" />
					<YAxis />
					<Tooltip />
					<Area connectNulls type={Monotone} dataKey="uv" stroke="#8884d8" fill="#8884d8" />
				</AreaChart>
			</div>
		');
	}
}
