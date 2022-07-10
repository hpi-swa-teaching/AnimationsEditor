updating
updateExtent
	| normalHeight fullWidth |

	normalHeight := self scrollPane height - self borderWidth.
	fullWidth := (self endTime max: 1000) + self startMargin + self endMargin.
	self width: fullWidth.
	fullWidth > self scrollPane width 
		ifTrue: [self height: normalHeight - self scrollPane scrollBarThickness.] 
		ifFalse: [self height: normalHeight.].
	