package recharts.component;

/**
	Manually derived on 2020-01-04 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/component/Legend.tsx
*/

import js.html.DOMRect;
import recharts.component.DefaultLegendContent.DefaultLegendContentProps;
import recharts.component.DefaultLegendContent.LegendPayload;

typedef LegendProps<TPayload, TValue, TID> = {
	> DefaultLegendContentProps<TPayload, TValue, TID>,

	@:optional var wrapperStyle:CSSProperties;
	@:optional var chartWidth:Float;
	@:optional var chartHeight:Float;
	@:optional var width:Float;
	@:optional var height:Float;
	@:optional var margin:Margins;
	@:optional var payloadUniqBy:UniqueOption<TPayload, TValue, TID>;
	@:optional var onBBoxUpdate:?DOMRect->Void;
}

@:jsRequire('recharts', 'Legend')
extern class Legend<TPayload, TValue, TID>
extends ReactComponentOfProps<LegendProps<TPayload, TValue, TID>> {}

private typedef UniqueOption<TPayload, TValue, TID> = EitherType<
	LegendPayload<TPayload, TValue, TID>->Any, // TODO
	Bool
>;
