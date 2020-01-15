package recharts.common;

@:enum abstract IfOverflow(String) {
	var Hidden = 'hidden';
	var Visible = 'visible';
	var Discard = 'discard';
	var ExtendDomain = 'extendDomain';
}
