package recharts.common;

@:enum abstract Easing(String) #if recharts_enum_from_string from String #end {
	var Ease = 'ease';
	var EaseIn = 'ease-in';
	var EaseOut = 'ease-out';
	var EaseInOut = 'ease-in-out';
	var Linear = 'linear';
}
