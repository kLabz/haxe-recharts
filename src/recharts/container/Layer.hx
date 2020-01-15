package recharts.container;

/**
	Manually derived on 2020-01-05 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/container/Layer.tsx
*/

typedef LayerProps = {
	> PresentationAttributes,

	@:optional var className:String;
	@:optional var children:ReactFragment;
}

@:jsRequire('recharts', 'Layer')
extern class Layer extends ReactComponentOfProps<LayerProps> {}
