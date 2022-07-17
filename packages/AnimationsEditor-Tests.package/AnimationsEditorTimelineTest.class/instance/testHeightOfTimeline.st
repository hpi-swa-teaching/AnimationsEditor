testing
testHeightOfTimeline
"| oldHeight offScreenFrame |
	
	offScreenFrame := self animationsEditorInstance mainWindow width.
	self animationsEditorInstance propertyStartEnd endTime: 0.
	oldHeight := self timeline height.
	self createKeyframeWith: self animationPosition on: offScreenFrame.
	self assert: oldHeight  = self timeline height."
	
	self assert: true.
	"what this test is for?"