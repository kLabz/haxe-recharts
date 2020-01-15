package recharts.component;

/**
	Manually derived on 2020-01-04 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/component/DefaultLegendContent.tsx
*/

@:coreType
abstract LegendContentType<TValue, TID>
from ReactFragment
from DefaultLegendContentProps<TValue, TID>->ReactFragment {}

typedef LegendFormatter<TValue, TID> = Any->LegendPayload<TValue, TID>->Int->ReactFragment;

typedef LegendPayload<TValue, TID> = {
	var value:TValue;
	var id:TID;
	var type:LegendType;
	var color:String;
	var payload:{strokeDasharray:ReactText};
	@:optional var formatter:LegendFormatter<TValue, TID>;
	@:optional var inactive:Bool;
}

typedef DefaultLegendContentProps<TValue, TID> = {
	@:optional var content:LegendContentType<TValue, TID>;
	@:optional var iconSize:Int;
	@:optional var iconType:IconType;
	@:optional var layout:LayoutType;
	@:optional var align:HorizontalAlignmentType;
	@:optional var verticalAlign:VerticalAlignmentType;
	@:optional var payload:Array<LegendPayload<TValue, TID>>;
	@:optional var inactiveColor:String;
	@:optional var formatter:LegendFormatter<TValue, TID>;
	@:optional var onClick:HandlerOrVoid<ClassicHandler>;
	@:optional var onMouseEnter:HandlerOrVoid<ClassicHandler>;
	@:optional var onMouseLeave:HandlerOrVoid<ClassicHandler>;
}

@:jsRequire('recharts/component/DefaultLegendContent', 'DefaultLegendContent')
extern class DefaultLegendContent<TValue, TID>
extends ReactComponentOfProps<DefaultLegendContentProps<TValue, TID>> {}
