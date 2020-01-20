package recharts.component;

/**
	Manually derived on 2020-01-04 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/component/Tooltip.tsx
*/

import recharts.component.DefaultTooltipContent.DefaultTooltipContentProps;
import recharts.component.DefaultTooltipContent.TooltipPayload;

typedef TooltipProps<TValue:ValueType, TName:NameType> = {
	> DefaultTooltipContentProps<TValue, TName>,

	@:optional var allowEscapeViewBox:EscapeViewBox;
	@:optional var content:TooltipContentType<TValue, TName>;
	@:optional var viewBox:ViewBox;
	@:optional var active:Bool;
	@:optional var offset:Float;
	@:optional var wrapperStyle:CSSProperties;
	@:optional var cursor:CursorDef;
	@:optional var coordinate:Point;
	@:optional var position:Point;
	@:optional var payloadUniqBy:UniqueOption<TValue, TName>;
	@:optional var isAnimationActive:Bool;
	@:optional var animationDuration:Int;
	@:optional var animationEasing:Easing;
	@:optional var filterNull:Bool;
	@:optional var useTranslate3d:Bool;
}

@:jsRequire('recharts', 'Tooltip')
extern class Tooltip<TValue:ValueType, TName:NameType>
extends ReactComponentOfProps<TooltipProps<TValue, TName>> {}

typedef TooltipContentType<TValue:ValueType, TName:NameType> = EitherType<
	TooltipProps<TValue, TName>->ReactFragment,
	ReactFragment
>

typedef EscapeViewBox = {
	@:optional var x:Bool;
	@:optional var y:Bool;
}

typedef CursorDef = EitherType<CursorProps, ReactFragment, Bool>;

typedef CursorProps = {
	var strokeDasharray:ReactText;
	@:optional var stroke:String;
}

private typedef UniqueOption<TValue:ValueType, TName:NameType> = EitherType<
	TooltipPayload<TValue, TName>->Any, // TODO
	Bool
>;
