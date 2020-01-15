package recharts.component;

/**
	Manually derived on 2020-01-04 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/component/LabelList.tsx
*/

import recharts.component.Label.LabelContentType;

typedef BaseData = {
	@:optional var value:ValueType;
	@:optional var payload:Any;
}

typedef LabelListProps<TData:BaseData> = {
	@:optional var id:String;
	@:optional var data:Array<TData>;
	@:optional var valueAccessor:TData->Int->Any;
	@:optional var clockWise:Bool;
	@:optional var dataKey:DataKey<TData>;
	@:optional var content:LabelContentType;
}

@:jsRequire('recharts', 'LabelList')
extern class LabelList<TData:BaseData>
extends ReactComponentOfProps<LabelListProps<TData>> {}
