accessing
positionY: aNumber
	| value |

	value := aNumber asString asInteger.
	value
		ifNotNil: [self currentValue setX: (self currentValue x) setY: value].