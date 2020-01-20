package recharts.example.bar_chart;

import recharts.chart.BarChart;
import recharts.cartesian.Bar;
import recharts.cartesian.CartesianGrid;
import recharts.cartesian.XAxis;
import recharts.cartesian.YAxis;
import recharts.component.Legend;
import recharts.component.ResponsiveContainer;
import recharts.component.Tooltip;

class BarChartWithMultiXAxis extends ReactComponentOfProps<Empty> {
	override function render():ReactFragment {
		var data = [
			{date: '2000-01', uv: 4000, pv: 2400, amt: 2400},
			{date: '2000-02', uv: 3000, pv: 1398, amt: 2210},
			{date: '2000-03', uv: 2000, pv: 9800, amt: 2290},
			{date: '2000-04', uv: 2780, pv: 3908, amt: 2000},
			{date: '2000-05', uv: 1890, pv: 4800, amt: 2181},
			{date: '2000-06', uv: 2390, pv: 3800, amt: 2500},
			{date: '2000-07', uv: 3490, pv: 4300, amt: 2100},
			{date: '2000-08', uv: 4000, pv: 2400, amt: 2400},
			{date: '2000-09', uv: 3000, pv: 1398, amt: 2210},
			{date: '2000-10', uv: 2000, pv: 9800, amt: 2290},
			{date: '2000-11', uv: 2780, pv: 3908, amt: 2000},
			{date: '2000-12', uv: 1890, pv: 4800, amt: 2181}
		];

		return jsx('
			<ResponsiveContainer minHeight={250}>
				<BarChart
					margin={{top: 5, right: 30, left: 20, bottom: 5}}
					data={data}
				>
					<CartesianGrid strokeDasharray="3 3" />
					<XAxis dataKey="date" tickFormatter={monthTickFormatter} />
					<XAxis
						dataKey="date"
						axisLine={false}
						tickLine={false}
						interval={0}
						tick={renderQuarterTick}
						height={1}
						scale={Band}
						xAxisId="quarter"
					/>
					<YAxis />
					<Tooltip />
					<Legend />
					<Bar dataKey="pv" fill="#8884d8" />
					<Bar dataKey="uv" fill="#82ca9d" />
				</BarChart>
			</ResponsiveContainer>
		');
	}

	function monthTickFormatter(tick):String {
		var date = new js.lib.Date(tick);
		return Std.string(date.getMonth() + 1);
	}

	function renderQuarterTick(tickProps:recharts.cartesian.CartesianAxisTickProps):ReactFragment {
		var x = tickProps.x;
		var y = tickProps.y;
		var payload = tickProps.payload;
		var value = payload.value;
		var offset = payload.offset;

		var date = new js.lib.Date(value);
		var month = date.getMonth();
		var quarterNo = Math.floor(month / 3) + 1;
		var isMidMonth = month % 3 == 1;

		if (month % 3 == 1) {
			return jsx('
				<text
					x={x + offset}
					y={y - 4}
					textAnchor="middle"
				>
					Q{quarterNo}
				</text>
			');
		}

		var isLast = month == 11;

		if (month % 3 == 0 || isLast) {
			var pathX = Math.floor(isLast ? x + offset * 2 : x) + 0.5;
			var d = 'M${pathX},${y - 4}v${-35}';
			return jsx('<path d={d} stroke="red" />');
		}

		return null;
	};
}
