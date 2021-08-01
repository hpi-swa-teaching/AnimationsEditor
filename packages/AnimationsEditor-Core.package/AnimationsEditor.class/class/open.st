initialize
open
	| instance window |
	
	instance := self new.
	window := ToolBuilder open: instance.
	instance windowReference: window.
	^ instance.