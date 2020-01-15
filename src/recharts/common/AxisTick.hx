package recharts.common;

import js.html.svg.SVGElement;
import js.html.svg.TextElement;

@:coreType abstract AxisTick
from ReactFragment from Any->SVGElement
from PresentationAttributesFor<TextElement> from Bool {}
