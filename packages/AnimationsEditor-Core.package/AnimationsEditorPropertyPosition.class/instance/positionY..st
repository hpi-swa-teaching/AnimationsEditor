accessing
positionY: aNumber
	| value |

	value := aNumber asString asInteger.
	value
		ifNotNil: [self targetPosition setX: (self targetPosition x) setY: value].