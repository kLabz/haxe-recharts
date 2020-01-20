package recharts.example.area_chart;

import recharts.cartesian.Area;
import recharts.cartesian.CartesianGrid;
import recharts.cartesian.XAxis;
import recharts.cartesian.YAxis;
import recharts.chart.AreaChart;
import recharts.component.DefaultTooltipContent;
import recharts.component.Tooltip;

class PercentAreaChart extends ReactComponentOfProps<Empty> {
	override function render():ReactFragment {
		var data = [
			{month: '2015.01', a: 4000, b: 2400, c: 2400},
			{month: '2015.02', a: 3000, b: 1398, c: 2210},
			{month: '2015.03', a: 2000, b: 9800, c: 2290},
			{month: '2015.04', a: 2780, b: 3908, c: 2000},
			{month: '2015.05', a: 1890, b: 4800, c: 2181},
			{month: '2015.06', a: 2390, b: 3800, c: 2500},
			{month: '2015.07', a: 3490, b: 4300, c: 2100}
		];

		return jsx('
			<AreaChart
				width={500}
				height={400}
				data={data}
				stackOffset={Expand}
				margin={{top: 10, right: 30, left: 0, bottom: 0}}
			>
				<XAxis dataKey="month" />
				<YAxis tickFormatter={toPercent.bind(_, 0)} />
				<Tooltip content={renderTooltipContent} />
				<Area type={Monotone} dataKey="a" stackId="1" stroke="#8884d8" fill="#8884d8" />
				<Area type={Monotone} dataKey="b" stackId="1" stroke="#82ca9d" fill="#82ca9d" />
				<Area type={Monotone} dataKey="c" stackId="1" stroke="#ffc658" fill="#ffc658" />
			</AreaChart>
		');
	}

	function getPercent(value:Float, total:Float):String {
		var ratio = total > 0 ? value / total : 0;
		return toPercent(ratio, 2);
	}

	function toPercent(decimal:Float, fixed:Int):String {
		return untyped __js__('({0}).toFixed({1})', decimal * 100, fixed) + "%";
	}

	function renderTooltipContent(o:TooltipProps<Float, String>):ReactFragment {
		var total = Lambda.fold(o.payload, function(entry, result) {
			return result + entry.value;
		}, 0);

		return jsx('
			<div style={{
				width: "200px",
				margin: 0,
				lineHeight: "24px",
				border: "1px solid #f5f5f5",
				backgroundColor: "rgba(255, 255, 255, 0.8)",
				padding: "0 10px"
			}}>
				<p>{o.label} (Total: {total})</p>
				<ul>{renderValues(o.payload, total)}</ul>
			</div>
		');
	}

	function renderValues(payload:Array<TooltipPayload<Float, String>>, total:Float):ReactFragment {
		return Lambda.mapi(payload, function(index, entry) {
			var key = 'item-$index';

			return jsx('
				<li key={key} style={{color: entry.color}}>
					{entry.name}: {entry.value} ({getPercent(entry.value, total)})
				</li>
			');
		});
	}
}
