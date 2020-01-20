package recharts.common;

#if (react_types_base_element == 'DOMElement')
import js.html.DOMElement;
#else
import js.html.Element as DOMElement;
#end

import js.html.svg.SVGElement;
import react.types.dom.SVGAttributes;

typedef PresentationAttributes = {
	> DOMAttributesWithProps<SVGElement>,
	> SVGAttributes<SVGElement>,
}

typedef PresentationAttributesFor<TElement:DOMElement> = {
	> DOMAttributesWithProps<TElement>,
	> SVGAttributes<TElement>,
}
