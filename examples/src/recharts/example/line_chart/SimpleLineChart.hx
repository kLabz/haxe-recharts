package recharts.example.line_chart;

import recharts.chart.LineChart;
import recharts.cartesian.Line;
import recharts.cartesian.CartesianGrid;
import recharts.cartesian.XAxis;
import recharts.cartesian.YAxis;
import recharts.component.Legend;
import recharts.component.ResponsiveContainer;
import recharts.component.Tooltip;

class SimpleLineChart extends ReactComponentOfProps<Empty> {
	override function render():ReactFragment {
		var data = [
			{name: "Page A", uv: 4000, pv: 2400, amt: 2400},
			{name: "Page B", uv: 3000, pv: 1398, amt: 2210},
			{name: "Page C", uv: 2000, pv: 9800, amt: 2290},
			{name: "Page D", uv: 2780, pv: 3908, amt: 2000},
			{name: "Page E", uv: 1890, pv: 4800, amt: 2181},
			{name: "Page F", uv: 2390, pv: 3800, amt: 2500},
			{name: "Page G", uv: 3490, pv: 4300, amt: 2100}
		];

		return jsx('
			<ResponsiveContainer minHeight={250}>
				<LineChart
					margin={{top: 5, right: 30, left: 20, bottom: 5}}
					data={data}
				>
					<CartesianGrid strokeDasharray="3 3" />
					<XAxis dataKey="name" />
					<YAxis />
					<Tooltip />
					<Legend />
					<Line type={Monotone} dataKey="pv" stroke="#8884d8" activeDot={{r: 8}} />
					<Line type={Monotone} dataKey="uv" stroke="#82ca9d" />
				</LineChart>
			</ResponsiveContainer>
		');
	}
}
