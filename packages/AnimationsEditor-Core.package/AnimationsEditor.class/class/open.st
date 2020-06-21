initialize-release
open
	| instance |
	instance := self new.
	ToolBuilder open: instance.
	instance seedDummyPropertyTraces.

	^ instance.
