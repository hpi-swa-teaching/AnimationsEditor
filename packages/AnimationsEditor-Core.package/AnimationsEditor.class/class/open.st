initialize-release
open
	| instance window ui |
	
	instance := self new.
	ui := AnimationsEditorUI on: instance.
	window := ToolBuilder open: ui.
	instance windowReference: window.
	
	^ instance.
