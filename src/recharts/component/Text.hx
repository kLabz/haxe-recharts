package recharts.component;

/**
	Manually derived on 2020-01-04 from:
	https://github.com/recharts/recharts/blob/9a38bec/src/component/Text.tsx
*/

typedef TextProps = ForcedOverride<PresentationAttributes, {
	@:optional var scaleToFit:Bool;
	@:optional var angle:Float;
	@:optional var textAnchor:TextAnchor;
	@:optional var verticalAnchor:VerticalAlignmentType;
	@:optional var style:CSSProperties;
	@:optional var lineHeight:StringOrFloat;
}>

@:jsRequire('recharts', 'Text')
extern class Text extends ReactComponentOfProps<TextProps> {}

@:enum abstract TextAnchor(String) #if recharts_enum_from_string from String #end {
	var Start = 'start';
	var Middle = 'middle';
	var End = 'end';
	var Inherit = 'inherit';
}
