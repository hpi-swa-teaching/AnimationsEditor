accessing
setAnimationProperty: aRotation
	| flexShell |
	
	(self targetMorph isKindOf: TransformMorph)
	ifFalse: [
		flexShell := self targetMorph addFlexShell.
		self targetMorph: flexShell.
	].
	self targetMorph rotationDegrees: aRotation. 
	