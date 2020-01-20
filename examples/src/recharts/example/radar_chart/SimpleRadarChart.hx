package recharts.example.radar_chart;

import recharts.chart.RadarChart;
import recharts.component.ResponsiveContainer;
import recharts.polar.PolarGrid;
import recharts.polar.PolarAngleAxis;
import recharts.polar.PolarRadiusAxis;
import recharts.polar.Radar;

class SimpleRadarChart extends ReactComponentOfProps<Empty> {
	override function render():ReactFragment {
		var data = [
			{subject: 'Math', A: 120, B: 110, fullMark: 150},
			{subject: 'Chinese', A: 98, B: 130, fullMark: 150},
			{subject: 'English', A: 86, B: 130, fullMark: 150},
			{subject: 'Geography', A: 99, B: 100, fullMark: 150},
			{subject: 'Physics', A: 85, B: 90, fullMark: 150},
			{subject: 'History', A: 65, B: 85, fullMark: 150}
		];

		return jsx('
			<ResponsiveContainer minHeight={280}>
				<RadarChart cx={250} cy={150} outerRadius={100} width={300} height={250} data={data}>
					<PolarGrid />
					<PolarAngleAxis dataKey="subject" />
					<PolarRadiusAxis />
					<Radar name="Mike" dataKey="A" stroke="#8884d8" fill="#8884d8" fillOpacity={0.6} />
				</RadarChart>
			</ResponsiveContainer>
		');
	}
}
