package recharts.example.bar_chart;

import recharts.chart.BarChart;
import recharts.cartesian.Bar;
import recharts.cartesian.CartesianGrid;
import recharts.cartesian.XAxis;
import recharts.cartesian.YAxis;
import recharts.component.Label.LabelProps;
import recharts.component.LabelList;
import recharts.component.Legend;
import recharts.component.ResponsiveContainer;
import recharts.component.Tooltip;

class BarChartWithMinHeight extends ReactComponentOfProps<Empty> {
	override function render():ReactFragment {
		var data = [
			{name: 'Page A', uv: 4000, pv: 2400, amt: 2400},
			{name: 'Page B', uv: 3000, pv: 1398, amt: 2210},
			{name: 'Page C', uv: 2000, pv: 8, amt: 2290},
			{name: 'Page D', uv: 2780, pv: 3908, amt: 2000},
			{name: 'Page E', uv: 18, pv: 4800, amt: 2181},
			{name: 'Page F', uv: 2390, pv: 3800, amt: 2500},
			{name: 'Page G', uv: 3490, pv: 4300, amt: 2100}
		];

		return jsx('
			<ResponsiveContainer minHeight={250}>
				<BarChart
					margin={{top: 5, right: 30, left: 20, bottom: 5}}
					data={data}
				>
					<CartesianGrid strokeDasharray="3 3" />
					<XAxis dataKey="name" />
					<YAxis />
					<Tooltip />
					<Legend />
					<Bar dataKey="pv" fill="#8884d8" minPointSize={5}>
						<LabelList dataKey="name" content={renderCustomizedLabel} />
					</Bar>
					<Bar dataKey="uv" fill="#82ca9d" minPointSize={10} />
				</BarChart>
			</ResponsiveContainer>
		');
	}

	function renderCustomizedLabel(props:LabelProps):ReactFragment {
		var radius = 10;

		return jsx('
			<g>
				<circle
					cx={props.x + props.width / 2}
					cy={props.y - radius}
					r={radius}
					fill="#8884d8"
				/>

				<text
					x={props.x + props.width / 2}
					y={props.y - radius}
					fill="#fff"
					textAnchor="middle"
					dominantBaseline="middle"
				>
					{(props.value:String).split(" ")[1]}
				</text>
			</g>
		');
	}
}
