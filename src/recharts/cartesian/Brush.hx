package recharts.cartesian;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/cartesian/Brush.tsx
*/

typedef BrushStartEndIndex = {
	@:optional var startIndex:Int;
	@:optional var endIndex:Int;
}

typedef InternalBrushProps<TData> = {
	@:optional var x:Float;
	@:optional var y:Float;
	@:optional var width:Float;
	@:optional var data:Array<TData>;
	@:optional var updateId:StringOrInt;
}

typedef BrushProps<TData> = ForcedOverride<PresentationAttributes, {
	> InternalBrushProps<TData>,

	@:optional var className:String;
	@:optional var height:Float;
	@:optional var travellerWidth:Float;
	@:optional var gap:Float;
	@:optional var padding:Margins;
	@:optional var dataKey:DataKey<Any>;
	@:optional var startIndex:Int;
	@:optional var endIndex:Int;
	@:optional var tickFormatter:Any->ReactText;
	@:optional var children:ReactFragment;
	@:optional var onChange:HandlerOrVoid<BrushStartEndIndex->Void>;
	@:optional var leaveTimeOut:Int;
	@:optional var alwaysShowText:Bool;
}>

@:jsRequire('recharts', 'Brush')
extern class Brush<TData> extends ReactComponentOfProps<BrushProps<TData>> {}
