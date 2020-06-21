initialize-release
openNewProject: aName
	| instance |
	instance := self new.
	instance animationsName: aName.
	ToolBuilder open: instance.
	
	^ instance.
	