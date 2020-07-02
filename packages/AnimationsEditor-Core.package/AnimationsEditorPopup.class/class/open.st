as yet unclassified
open
	| tempInstance |
	tempInstance := self new.
	tempInstance windowReference: (ToolBuilder open: tempInstance).
	
	^ tempInstance.