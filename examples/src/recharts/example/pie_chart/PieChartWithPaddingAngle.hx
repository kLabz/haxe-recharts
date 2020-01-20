package recharts.example.pie_chart;

import recharts.chart.PieChart;
import recharts.component.ResponsiveContainer;
import recharts.component.Cell;
import recharts.polar.Pie;

class PieChartWithPaddingAngle extends ReactComponentOfProps<Empty> {
	static var COLORS = ['#0088FE', '#00C49F', '#FFBB28', '#FF8042'];

	override function render():ReactFragment {
		var data = [
			{ name: 'Group A', value: 400 }, { name: 'Group B', value: 300 },
			{ name: 'Group C', value: 300 }, { name: 'Group D', value: 200 }
		];

		return jsx('
			<ResponsiveContainer minHeight={250}>
				<PieChart width={500} height={150}>
					<Pie
						data={data}
						cx={125}
						cy={125}
						innerRadius={60}
						outerRadius={80}
						fill="#8884d8"
						paddingAngle={5}
					>
						{Lambda.mapi(data, renderSegment)}
					</Pie>

					<Pie
						data={data}
						cx={350}
						cy={125}
						startAngle={180}
						endAngle={0}
						innerRadius={60}
						outerRadius={80}
						fill="#8884d8"
						paddingAngle={5}
					>
						{Lambda.mapi(data, renderSegment)}
					</Pie>
				</PieChart>
			</ResponsiveContainer>
		');
	}

	function renderSegment(index, entry):ReactFragment {
		return jsx('
			<Cell fill={COLORS[index % COLORS.length]}/>
		');
	}
}
