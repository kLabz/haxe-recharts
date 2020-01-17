package recharts.common;

import js.html.svg.SVGElement;
import js.html.svg.TextElement;

@:coreType abstract AxisTick<TickProps>
from ReactFragment from TickProps->ReactFragment
from PresentationAttributesFor<TextElement> from Bool {}
