package recharts.component;

/**
	Manually derived on 2020-01-04 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/component/Label.tsx
*/

typedef LabelProps = ForcedOverride<PresentationAttributes, {
	@:optional var viewBox:EitherType<CartesianViewBox, PolarViewBox>;
	@:optional var value:StringOrFloat;
	@:optional var offset:Float;
	@:optional var position:Any; // TODO...
	@:optional var children:ReactFragment;
	@:optional var content:LabelContentType;
}>

@:jsRequire('recharts', 'Label')
extern class Label extends ReactComponentOfProps<LabelProps> {}

typedef LabelContentType = EitherType<ReactFragment, LabelProps->ReactFragment>;
typedef LabelFactory = EitherType<Bool, ReactFragment, LabelProps->ReactFragment, LabelProps>;

@:coreType
abstract LabelContentType from ReactFragment from LabelProps->ReactFragment {}

typedef CartesianViewBox = {
	@:optional var x:Float;
	@:optional var y:Float;
	@:optional var width:Float;
	@:optional var height:Float;
}

typedef PolarViewBox = {
	@:optional var cx:Float;
	@:optional var cy:Float;
	@:optional var innerRadius:Float;
	@:optional var outerRadius:Float;
	@:optional var startAngle:Float;
	@:optional var endAngle:Float;
	@:optional var clockWise:Bool;
}
