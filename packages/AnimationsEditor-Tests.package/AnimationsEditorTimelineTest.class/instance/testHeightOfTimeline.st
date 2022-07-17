testing
testHeightOfTimeline
| oldHeight offScreenFrame scrollBarThickness |
	
	self animationsEditorInstance mainWindow width: 2000.
	offScreenFrame := self animationsEditorInstance mainWindow width.
	oldHeight := self timeline height.
	self createKeyframeWith: self animationPosition on: offScreenFrame.
	scrollBarThickness := self timeline scrollPane scrollBarThickness.
	self assert: oldHeight - scrollBarThickness  = self timeline height.
	
	