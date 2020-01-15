package recharts.component;

/**
	Manually derived on 2020-01-04 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/component/ResponsiveContainer.tsx
*/

typedef ResponsiveContainerProps = {
	var children:ReactSingleFragment;
	@:optional var aspect:Float;
	@:optional var width:StringOrFloat;
	@:optional var height:StringOrFloat;
	@:optional var minWidth:StringOrFloat;
	@:optional var minHeight:StringOrFloat;
	@:optional var maxHeight:StringOrFloat;
	@:optional var debounce:Int;
	@:optional var id:String;
	@:optional var className:String;
}

@:jsRequire('recharts', 'ResponsiveContainer')
extern class ResponsiveContainer extends ReactComponentOfProps<ResponsiveContainerProps> {}
