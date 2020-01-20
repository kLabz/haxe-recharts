package recharts.common;

import js.html.svg.TextElement;

typedef AxisTick<TickProps> = EitherType<
	PresentationAttributesFor<TextElement>,
	TickProps->ReactFragment,
	ReactFragment,
	Bool
>;
