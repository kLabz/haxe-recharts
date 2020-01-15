package recharts.component;

/**
	Manually derived on 2020-01-04 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/component/Legend.tsx
*/

import js.html.DOMRect;
import recharts.component.DefaultLegendContent.DefaultLegendContentProps;
import recharts.component.DefaultLegendContent.LegendPayload;

typedef LegendProps<TValue, TID> = {
	> DefaultLegendContentProps<TValue, TID>,

	@:optional var wrapperStyle:CSSProperties;
	@:optional var chartWidth:Int;
	@:optional var chartHeight:Int;
	@:optional var width:Int;
	@:optional var height:Int;
	@:optional var margin:Margins;
	@:optional var payloadUniqBy:UniqueOption<TValue, TID>;
	@:optional var onBBoxUpdate:?DOMRect->Void;
}

@:jsRequire('recharts', 'Legend')
extern class Legend<TValue, TID>
extends ReactComponentOfProps<LegendProps<TValue, TID>> {}

@:coreType
private abstract UniqueOption<TValue, TID>
from Bool from LegendPayload<TValue, TID>->Any {}
