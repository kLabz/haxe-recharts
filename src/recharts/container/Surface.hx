package recharts.container;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/container/Surface.tsx
*/

typedef SurfaceProps = ForcedOverride<PresentationAttributes, {
	@:optional var width:Float;
	@:optional var height:Float;
	@:optional var viewBox:ViewBox;
	@:optional var className:String;
	@:optional var style:CSSProperties;
	@:optional var children:ReactFragment;
}>

@:jsRequire('recharts', 'Surface')
extern class Surface extends ReactComponentOfProps<SurfaceProps> {}
