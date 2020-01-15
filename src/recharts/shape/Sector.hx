package recharts.shape;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/shape/Sector.tsx
*/

import js.html.svg.PathElement;

typedef SectorProps = ForcedOverride<PresentationAttributesFor<PathElement>, {
	> GeometrySector,

	@:optional var className:String;
}>

@:jsRequire('recharts', 'Sector')
extern class Sector extends ReactComponentOfProps<SectorProps> {}
