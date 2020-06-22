initialize-release
open
	| instance window |
	instance := self new.
	window := ToolBuilder open: instance.
	instance seedDummyPropertyTraces.

	^ window.
