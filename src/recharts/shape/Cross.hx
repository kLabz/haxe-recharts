package recharts.shape;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/shape/Cross.tsx
*/

import js.html.svg.PathElement;

typedef CrossProps = ForcedOverride<PresentationAttributesFor<PathElement>, {
	@:optional var x:Float;
	@:optional var y:Float;
	@:optional var width:Float;
	@:optional var height:Float;
	@:optional var top:Float;
	@:optional var left:Float;
	@:optional var className:Float; // ?!
}>

@:jsRequire('recharts', 'Cross')
extern class Cross extends ReactComponentOfProps<CrossProps> {}
