package recharts.example.scatter_chart;

import recharts.cartesian.Scatter;
import recharts.cartesian.XAxis;
import recharts.cartesian.YAxis;
import recharts.cartesian.ZAxis;
import recharts.chart.ScatterChart;

class BubbleChart extends ReactComponentOfProps<Empty> {
	override function render():ReactFragment {
		var data01 = [
			{hour: '12a', index: 1, value: 170},
			{hour: '1a', index: 1, value: 180},
			{hour: '2a', index: 1, value: 150},
			{hour: '3a', index: 1, value: 120},
			{hour: '4a', index: 1, value: 200},
			{hour: '5a', index: 1, value: 300},
			{hour: '6a', index: 1, value: 400},
			{hour: '7a', index: 1, value: 200},
			{hour: '8a', index: 1, value: 100},
			{hour: '9a', index: 1, value: 150},
			{hour: '10a', index: 1, value: 160},
			{hour: '11a', index: 1, value: 170},
			{hour: '12a', index: 1, value: 180},
			{hour: '1p', index: 1, value: 144},
			{hour: '2p', index: 1, value: 166},
			{hour: '3p', index: 1, value: 145},
			{hour: '4p', index: 1, value: 150},
			{hour: '5p', index: 1, value: 170},
			{hour: '6p', index: 1, value: 180},
			{hour: '7p', index: 1, value: 165},
			{hour: '8p', index: 1, value: 130},
			{hour: '9p', index: 1, value: 140},
			{hour: '10p', index: 1, value: 170},
			{hour: '11p', index: 1, value: 180}
		];

		var data02 = [
			{hour: '12a', index: 1, value: 160},
			{hour: '1a', index: 1, value: 180},
			{hour: '2a', index: 1, value: 150},
			{hour: '3a', index: 1, value: 120},
			{hour: '4a', index: 1, value: 200},
			{hour: '5a', index: 1, value: 300},
			{hour: '6a', index: 1, value: 100},
			{hour: '7a', index: 1, value: 200},
			{hour: '8a', index: 1, value: 100},
			{hour: '9a', index: 1, value: 150},
			{hour: '10a', index: 1, value: 160},
			{hour: '11a', index: 1, value: 160},
			{hour: '12a', index: 1, value: 180},
			{hour: '1p', index: 1, value: 144},
			{hour: '2p', index: 1, value: 166},
			{hour: '3p', index: 1, value: 145},
			{hour: '4p', index: 1, value: 150},
			{hour: '5p', index: 1, value: 160},
			{hour: '6p', index: 1, value: 180},
			{hour: '7p', index: 1, value: 165},
			{hour: '8p', index: 1, value: 130},
			{hour: '9p', index: 1, value: 140},
			{hour: '10p', index: 1, value: 160},
			{hour: '11p', index: 1, value: 180}
		];

		var days = [
			'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'
		];

		var len = days.length;
		var range:Array<Float> = [16, 225];

		var charts = [for (i in 0...len) {
			var day = days[i];
			var isLast = i == len - 1;

			jsx('
				<ScatterChart
					key={day}
					width={480}
					height={60}
					margin={{top: 10, right: 0, bottom: 0, left: 0}}
				>
					<XAxis
						type={Category}
						dataKey="hour"
						interval={0}
						tick={isLast ? true : {fontSize: "0"}}
						tickLine={{transform: "translate(0, -6)"}}
					/>

					<YAxis
						type={Number}
						dataKey="index"
						name="sunday"
						height={10}
						width={80}
						tick={false}
						tickLine={false}
						axisLine={false}
						label={{value: day, position: InsideRight}}
					/>

					<ZAxis
						type={Number}
						dataKey="value"
						range={range}
					/>


					<Scatter data={i % 2 == 0 ? data01 : data02} fill="#8884d8" />
				</ScatterChart>
			');
		}];

		return jsx('
			<div>
				{charts}
			</div>
		');
	}
}
