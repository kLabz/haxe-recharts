package recharts.example.pie_chart;

import recharts.chart.PieChart;
import recharts.component.ResponsiveContainer;
import recharts.component.Tooltip;
import recharts.polar.Pie;

class StraightAnglePieChart extends ReactComponentOfProps<Empty> {
	override function render():ReactFragment {
		var data = [
			{ name: 'Group A', value: 400 }, { name: 'Group B', value: 300 },
			{ name: 'Group C', value: 300 }, { name: 'Group D', value: 200 },
			{ name: 'Group E', value: 278 }, { name: 'Group F', value: 189 },
		];

		return jsx('
			<ResponsiveContainer minHeight={200}>
				<PieChart>
					<Pie
						data={data}
						cx={230}
						cy={150}
						outerRadius={80}
						startAngle={180}
						endAngle={0}
						fill="#8884d8"
						label
					/>
				</PieChart>
			</ResponsiveContainer>
		');
	}
}
