testing
testHeightOfTimeline
| oldHeight scrollBarThickness offScreenFrame |
	
	offScreenFrame := self animationsEditorInstance mainWindow width.
	oldHeight := self timeline height.
	self createKeyframeWith: self animationPosition on: offScreenFrame.
	scrollBarThickness := self timeline scrollPane scrollBarThickness.
	self assert: oldHeight - scrollBarThickness  = self timeline height.