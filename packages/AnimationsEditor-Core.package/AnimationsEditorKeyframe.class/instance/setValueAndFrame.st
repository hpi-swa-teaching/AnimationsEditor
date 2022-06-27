as yet unclassified
setValueAndFrame
	|property selectedFrame selectedValue|
	property := self selectProperty.
	selectedFrame:= self frame.
	selectedValue := property targetValues at: self frame.
	self track property currentValue: selectedValue.
	self track property targetFrame: selectedFrame.