package recharts.shape;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/shape/Polygon.tsx
*/

import js.html.svg.PolygonElement;

typedef PolygonProps = ForcedOverride<PresentationAttributesFor<PolygonElement>, {
	@:optional var className:String;
	@:optional var points:Array<Point>;
}>

@:jsRequire('recharts', 'Polygon')
extern class Polygon extends ReactComponentOfProps<PolygonProps> {}
