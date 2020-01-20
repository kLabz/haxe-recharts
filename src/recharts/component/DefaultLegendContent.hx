package recharts.component;

/**
	Manually derived on 2020-01-04 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/component/DefaultLegendContent.tsx
*/

#if (react_types_base_element == 'DOMElement')
import js.html.DOMElement;
#else
import js.html.Element as DOMElement;
#end

import react.types.EventHandler;
import recharts.common.DOMAttributesWithProps;

typedef LegendContentType<TPayload, TValue, TID> = EitherType<
	DefaultLegendContentProps<TPayload, TValue, TID>->ReactFragment,
	ReactFragment
>;

typedef LegendFormatter<TPayload, TValue, TID> = Any->LegendPayload<TPayload, TValue, TID>->Int->ReactFragment;

// TPayload: LineProps, BarProps, etc.
typedef LegendPayload<TPayload, TValue, TID> = {
	var value:TValue;
	var dataKey:TID; // `id` in typescript types ??
	var type:LegendType;
	var color:String;
	var payload:TPayload;
	@:optional var formatter:LegendFormatter<TPayload, TValue, TID>;
	@:optional var inactive:Bool;
}

typedef DefaultLegendContentProps<TPayload, TValue, TID> = {
	@:optional var content:LegendContentType<TPayload, TValue, TID>;
	@:optional var iconSize:Float;
	@:optional var iconType:IconType;
	@:optional var layout:LayoutType;
	@:optional var align:HorizontalAlignmentType;
	@:optional var verticalAlign:VerticalAlignmentType;
	@:optional var payload:Array<LegendPayload<TPayload, TValue, TID>>;
	@:optional var inactiveColor:String;
	@:optional var formatter:LegendFormatter<TPayload, TValue, TID>;
	@:optional var onClick:HandlerOrVoid<ClassicHandler>;
	@:optional var onMouseEnter:TypedRechartsHandler<LegendPayload<TPayload, TValue, TID>, DOMElement, MouseEvent<DOMElement>>;
	@:optional var onMouseLeave:TypedRechartsHandler<LegendPayload<TPayload, TValue, TID>, DOMElement, MouseEvent<DOMElement>>;
}

@:jsRequire('recharts/component/DefaultLegendContent', 'DefaultLegendContent')
extern class DefaultLegendContent<TPayload, TValue, TID>
extends ReactComponentOfProps<DefaultLegendContentProps<TPayload, TValue, TID>> {}
