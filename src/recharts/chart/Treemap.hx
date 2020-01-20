package recharts.chart;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/chart/Treemap.tsx
*/

typedef TreemapProps<TData> = {
	@:optional var width:Float;
	@:optional var height:Float;
	@:optional var data:Array<TData>;
	@:optional var animationId:Int;
	@:optional var style:CSSProperties;
	@:optional var aspectRatio:Float;
	@:optional var content:ReactFragment;
	@:optional var fill:String;
	@:optional var stroke:String;
	@:optional var className:String;
	@:optional var nameKey:DataKey<Any>;
	@:optional var dataKey:DataKey<Any>;
	@:optional var children:ReactFragment;
	@:optional var type:TreemapType;
	@:optional var colorPanel:Array<String>;
	@:optional var nestIndexContent:NestIndexContent;
	@:optional var onAnimationStart:Noop;
	@:optional var onAnimationEnd:Noop;
	@:optional var isAnimationActive:Bool;
	@:optional var isUpdateAnimationActive:Bool;
	@:optional var animationBegin:Int;
	@:optional var animationDuration:Int;
	@:optional var animationEasing:Easing;
}

@:jsRequire('recharts', 'Treemap')
extern class Treemap<TData> extends ReactComponentOfProps<TreemapProps<TData>> {}

@:enum abstract TreemapType(String) #if recharts_enum_from_string from String #end {
	var Float = 'flat';
	var Nest = 'nest';
}

typedef NestIndexContent = EitherType<ReactFragment, Any->Int->ReactFragment>;
