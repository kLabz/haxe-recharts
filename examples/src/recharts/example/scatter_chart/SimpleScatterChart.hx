package recharts.example.scatter_chart;

import recharts.cartesian.CartesianGrid;
import recharts.cartesian.Scatter;
import recharts.cartesian.XAxis;
import recharts.cartesian.YAxis;
import recharts.chart.ScatterChart;
import recharts.component.ResponsiveContainer;
import recharts.component.Tooltip;

class SimpleScatterChart extends ReactComponentOfProps<Empty> {
	override function render():ReactFragment {
		var data = [
			{x: 100, y: 200, z: 200},
			{x: 120, y: 100, z: 260},
			{x: 170, y: 300, z: 400},
			{x: 140, y: 250, z: 280},
			{x: 150, y: 400, z: 500},
			{x: 110, y: 280, z: 200}
		];

		return jsx('
			<ResponsiveContainer minHeight={400}>
				<ScatterChart
					width={400}
					height={400}
					margin={{top: 20, right: 20, bottom: 20, left: 20}}
				>
					<CartesianGrid />
					<XAxis dataKey={"x"} type={Number} name="stature" unit="cm" />
					<YAxis dataKey={"y"} type={Number} name="weight" unit="kg" />
					<Scatter name="A school" data={data} fill="#8884d8" />
					<Tooltip cursor={{strokeDasharray: "3 3"}} />
				</ScatterChart>
			</ResponsiveContainer>
		');
	}
}
