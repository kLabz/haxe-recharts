package recharts.component;

/**
	Manually derived on 2020-01-04 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/component/DefaultTooltipContent.tsx
*/

typedef TooltipFormatter<TValue:ValueType, TName:NameType> = Any->TooltipPayload<TValue, TName>->Int->ReactFragment;

typedef TooltipPayload<TValue:ValueType, TName:NameType> = {
	@:optional var type:TooltipType;
	@:optional var color:String;
	@:optional var formatter:TooltipFormatter<TValue, TName>;
	@:optional var name:TName;
	@:optional var value:TValue;
	@:optional var unit:ReactFragment;
	@:optional var dataKey:StringOrInt;
}

typedef DefaultTooltipContentProps<TValue:ValueType, TName:NameType> = {
	@:optional var separator:String;
	@:optional var wrapperClassName:String;
	@:optional var labelClassName:String;
	@:optional var formatter:TooltipFormatter<TValue, TName>; // ?
	@:optional var contentStyle:CSSProperties;
	@:optional var itemStyle:CSSProperties;
	@:optional var labelStyle:CSSProperties;
	@:optional var labelFormatter:StringOrFloat->ReactFragment;
	@:optional var label:StringOrFloat;
	@:optional var payload:Array<TooltipPayload<TValue, TName>>;
	@:optional var itemSorter:TooltipPayload<TValue, TName>->StringOrFloat; // ?!
}

@:jsRequire('recharts/component/DefaultTooltipContent', 'DefaultTooltipContent')
extern class DefaultTooltipContent<TValue:ValueType, TName:NameType>
extends ReactComponentOfProps<DefaultTooltipContentProps<TValue, TName>> {}
