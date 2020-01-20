package recharts.example.pie_chart;

import recharts.chart.PieChart;
import recharts.component.ResponsiveContainer;
import recharts.component.Tooltip;
import recharts.polar.Pie;

class TwoSimplePieChart extends ReactComponentOfProps<Empty> {
	override function render():ReactFragment {
		var data01 = [
			{ name: 'Group A', value: 400 }, { name: 'Group B', value: 300 },
			{ name: 'Group C', value: 300 }, { name: 'Group D', value: 200 },
			{ name: 'Group E', value: 278 }, { name: 'Group F', value: 189 },
		];

		var data02 = [
			{ name: 'Group A', value: 2400 }, { name: 'Group B', value: 4567 },
			{ name: 'Group C', value: 1398 }, { name: 'Group D', value: 9800 },
			{ name: 'Group E', value: 3908 }, { name: 'Group F', value: 4800 },
		];

		return jsx('
			<ResponsiveContainer minHeight={250}>
				<PieChart width={500} height={150}>
					<Pie dataKey="value" isAnimationActive={false} data={data01} cx={150} cy={150} outerRadius={80} fill="#8884d8" label />
					<Pie dataKey="value" data={data02} cx={375} cy={150} innerRadius={40} outerRadius={80} fill="#82ca9d" />
					<Tooltip />
				</PieChart>
			</ResponsiveContainer>
		');
	}
}
