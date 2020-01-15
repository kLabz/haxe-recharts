package recharts.shape;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/shape/Symbols.tsx
*/

import js.html.svg.PathElement;

typedef SymbolsProps = ForcedOverride<PresentationAttributesFor<PathElement>, {
	@:optional var className:String;
	@:optional var type:SymbolType;
	@:optional var cx:Float;
	@:optional var cy:Float;
	@:optional var size:Float;
	@:optional var sizeType:SizeType;
}>

@:jsRequire('recharts', 'Symbols')
extern class Symbols extends ReactComponentOfProps<SymbolsProps> {}

@:enum abstract SizeType(String) {
	var Area = 'area';
	var Diameter = 'diameter';
}
