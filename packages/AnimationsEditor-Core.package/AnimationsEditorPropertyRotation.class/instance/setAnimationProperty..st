accessing
setAnimationProperty: aRotation
	self targetMorph rotationDegrees: aRotation. 
	 "   | flexShell |
	    
	    (self targetMorph isKindOf: TransformMorph)
	    ifFalse: [
	        flexShell := self targetMorph addFlexShell.
	        flexShell rotationDegrees: aRotation.
	        self targetMorph: flexShell.
	    ]."
	