package recharts.example.tooltip;

import recharts.chart.BarChart;
import recharts.cartesian.Bar;
import recharts.cartesian.CartesianGrid;
import recharts.cartesian.XAxis;
import recharts.cartesian.YAxis;
import recharts.component.Legend;
import recharts.component.ResponsiveContainer;
import recharts.component.Tooltip;

@:enum abstract Page(String) from String to String {
	var PageA = "Page A";
	var PageB = "Page B";
	var PageC = "Page C";
	var PageD = "Page D";
	var PageE = "Page E";
	var PageF = "Page F";
}

class CustomContentOfTooltip extends ReactComponentOfProps<Empty> {
	override function render():ReactFragment {
		var data = [
			{name: "Page A", uv: 4000, pv: 2400, amt: 2400},
			{name: "Page B", uv: 3000, pv: 1398, amt: 2210},
			{name: "Page C", uv: 2000, pv: 9800, amt: 2290},
			{name: "Page D", uv: 2780, pv: 3908, amt: 2000},
			{name: "Page E", uv: 1890, pv: 4800, amt: 2181},
			{name: "Page F", uv: 2390, pv: 3800, amt: 2500}
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
					<Tooltip content={renderTooltip} />
					<Legend />
					<Bar dataKey="pv" barSize={20} fill="#8884d8" />
				</BarChart>
			</ResponsiveContainer>
		');
	}

	function renderTooltip(item:TooltipProps<Float, String>):ReactFragment {
		if (!item.active) return null;

		return jsx('
			<div style={{
				width: "200px",
				margin: 0,
				lineHeight: "24px",
				border: "1px solid #f5f5f5",
				backgroundColor: "rgba(255, 255, 255, 0.8)",
				padding: "0 10px"
			}}>
				<p>{item.label} : {item.payload[0].value}</p>
				<p>{getIntroOfPage(item.label)}</p>
				<p>Anything you want can be displayed here.</p>
			</div>
		');
	}

	function getIntroOfPage(page:String) {
		return switch (page:Page) {
			case PageA: "Page A is about men's clothing";
			case PageB: "Page B is about women's dress";
			case PageC: "Page C is about women's bag";
			case PageD: "Page D is about household goods";
			case PageE: "Page E is about food";
			case PageF: "Page F is about baby food";
		}
	}
}
