package recharts.common;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/util/types.tsx
*/

import js.html.svg.LineElement;
import js.html.svg.TextElement;

import recharts.component.Label.LabelFactory;

typedef BaseAxisProps<TickProps> = {
	@:optional var type:BaseAxisType;
	@:optional var dataKey:DataKey<Any>;
	@:optional var hide:Bool;
	@:optional var label:LabelFactory;
	@:optional var scale:ScaleType;
	@:optional var tick:AxisTick<TickProps>;
	@:optional var tickCount:Int;
	@:optional var axisLine:EitherType<Bool, PresentationAttributesFor<LineElement>>;
	@:optional var tickLine:EitherType<Bool, PresentationAttributesFor<TextElement>>;
	@:optional var tickSize:Float;
	@:optional var tickFormatter:EitherType<Float, String, Array<StringOrFloat>>->String;
	@:optional var allowDataOverflow:Bool;
	@:optional var allowDuplicatedCategory:Bool;
	@:optional var allowDecimals:Bool;
	@:optional var domain:Array<AxisDomainItem>;
	@:optional var name:StringOrFloat;
	@:optional var unit:StringOrFloat;
	@:optional var axisType:AxisType;
	@:optional var range:Array<Float>;
	@:optional var AxisComp:ReactType;
}

@:enum abstract AxisType(String) #if recharts_enum_from_string from String #end {
	var XAxis = 'xAxis';
	var YAxis = 'yAxis';
	var AngleAxis = 'angleAxis';
	var RadiusAxis = 'radiusAxis';
}

@:coreType @:enum abstract AxisDomainItem
from String from Float from haxe.Constraints.Function {
	var Auto = cast 'auto';
	var DataMin = cast 'dataMin';
	var DataMax = cast 'dataMax';
}
