testing
testHeightOfTimeline
| oldHeight scrollBarThickness offScreenFrame |
	
	offScreenFrame := self animationsEditorInstance mainWindow width.
	self animationsEditorInstance propertyStartEnd endTime: 0.
	oldHeight := self timeline height.
	self createKeyframeWith: self animationPosition on: offScreenFrame.
	scrollBarThickness := self timeline scrollPane scrollBarThickness.
	self assert: oldHeight - scrollBarThickness  = self timeline height.