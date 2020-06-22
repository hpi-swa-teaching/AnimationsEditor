initialize-release
openNewProject: aName
	| instance window |
	instance := self new.
	instance animationsName: aName.
	window := ToolBuilder open: instance.
	
	^ window.
	