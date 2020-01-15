package recharts.shape;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/shape/Dot.tsx
*/

import js.html.svg.CircleElement;

typedef DotProps = ForcedOverride<PresentationAttributesFor<CircleElement>, {
	@:optional var className:String;
	@:optional var cx:Float;
	@:optional var cy:Float;
	@:optional var r:Float;
}>

@:jsRequire('recharts', 'Dot')
extern class Dot extends ReactComponentOfProps<DotProps> {}
