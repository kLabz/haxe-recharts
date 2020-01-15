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
	@:optional var offset:Int;
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

@:coreType
abstract TooltipContentType<TValue:ValueType, TName:NameType>
from ReactFragment
from TooltipProps<TValue, TName>->ReactFragment {}

typedef EscapeViewBox = {
	@:optional var x:Bool;
	@:optional var y:Bool;
}

@:coreType
abstract CursorDef from ReactFragment from CursorProps from Bool {}

typedef CursorProps = {
	var strokeDasharray:ReactText;
	@:optional var stroke:String;
}

@:coreType
private abstract UniqueOption<TValue:ValueType, TName:NameType>
from Bool from TooltipPayload<TValue, TName>->Any {}
