package recharts.component;

/**
	Manually derived on 2020-01-04 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/component/Label.tsx
*/

typedef LabelProps = ForcedOverride<PresentationAttributes, {
	@:optional var viewBox:EitherType<CartesianViewBox, PolarViewBox>;
	@:optional var value:StringOrFloat;
	@:optional var angle:Float;
	@:optional var offset:Float;
	@:optional var position:LabelPosition;
	@:optional var children:ReactFragment;
	@:optional var content:LabelContentType;
}>

@:jsRequire('recharts', 'Label')
extern class Label extends ReactComponentOfProps<LabelProps> {}

typedef LabelContentType = EitherType<ReactFragment, LabelProps->ReactFragment>;
typedef LabelFactory = EitherType<Bool, ReactFragment, LabelProps->ReactFragment, LabelProps>;

@:coreType
@:enum abstract LabelPosition from Point #if recharts_enum_from_string from String #end {
	var Top = cast 'top';
	var Left = cast 'left';
	var Right = cast 'right';
	var Bottom = cast 'bottom';
	var Inside = cast 'inside';
	var Outside = cast 'outside';
	var InsideLeft = cast 'insideLeft';
	var InsideRight = cast 'insideRight';
	var InsideTop = cast 'insideTop';
	var InsideBottom = cast 'insideBottom';
	var InsideTopLeft = cast 'insideTopLeft';
	var InsideBottomLeft = cast 'insideBottomLeft';
	var InsideTopRight = cast 'insideTopRight';
	var InsideBottomRight = cast 'insideBottomRight';
	var InsideStart = cast 'insideStart';
	var InsideEnd = cast 'insideEnd';
	var End = cast 'end';
	var Center = cast 'center';
	var CenterTop = cast 'centerTop';
	var CenterBottom = cast 'centerBottom';
}

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
