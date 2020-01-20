package recharts.example.pie_chart;

import recharts.chart.PieChart;
import recharts.component.ResponsiveContainer;
import recharts.polar.Pie;

class TwoLevelPieChart extends ReactComponentOfProps<Empty> {
	override function render():ReactFragment {
	var data01 = [
		{name: 'Group A', value: 400},
		{name: 'Group B', value: 300},
		{name: 'Group C', value: 300},
		{name: 'Group D', value: 200}
	];

	var data02 = [
		{name: 'A1', value: 100},
		{name: 'A2', value: 300},
		{name: 'B1', value: 100},
		{name: 'B2', value: 80},
		{name: 'B3', value: 40},
		{name: 'B4', value: 30},
		{name: 'B5', value: 50},
		{name: 'C1', value: 100},
		{name: 'C2', value: 200},
		{name: 'D1', value: 150},
		{name: 'D2', value: 50}
	];

	return jsx('
		<ResponsiveContainer minHeight={250}>
			<PieChart>
				<Pie data={data01} cx={230} cy={130} outerRadius={60} fill="#8884d8" />
				<Pie data={data02} cx={230} cy={130} innerRadius={70} outerRadius={90} fill="#82ca9d" label />
			</PieChart>
		</ResponsiveContainer>
	');
	}
}
