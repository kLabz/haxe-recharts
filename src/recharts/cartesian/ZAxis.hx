package recharts.cartesian;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/cartesian/ZAxis.tsx
*/

typedef ZAxisProps = {
	@:optional var type:BaseAxisType;
	@:optional var name:StringOrFloat;
	@:optional var unit:StringOrFloat;
	@:optional var zAxisId:StringOrInt;
	@:optional var dataKey:DataKey<Any>;
	@:optional var range:Array<Float>;
	@:optional var scale:ScaleType;
}

@:jsRequire('recharts', 'ZAxis')
extern class ZAxis extends ReactComponentOfProps<ZAxisProps> {}
