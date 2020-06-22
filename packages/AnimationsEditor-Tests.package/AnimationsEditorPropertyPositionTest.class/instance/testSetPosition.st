as yet unclassified
testSetPosition
	| p animation startPos endPos duration |
	p := AnimationsEditorPropertyPosition new.
	startPos := 10@10.
	endPos := 421@422.
	duration := 423.
	animation := p setPositionTo: endPos WithDuration: duration.
	self assert: (animation duration = duration).
	self assert: (animation endValue = endPos).
	self assert: (animation startValue = startPos).