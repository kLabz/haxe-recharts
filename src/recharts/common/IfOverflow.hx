package recharts.common;

@:enum abstract IfOverflow(String) #if recharts_enum_from_string from String #end {
	var Hidden = 'hidden';
	var Visible = 'visible';
	var Discard = 'discard';
	var ExtendDomain = 'extendDomain';
}
