testing
tearDown
	| targetMorph |

	super tearDown.
	targetMorph := (self animationsEditorInstance propertyList first) targetMorph.
	targetMorph isFlexed
		ifTrue: [targetMorph owner abandon]. "removes FlexShell"
	targetMorph abandon. 
	self animationsEditorInstance windowReference abandon.
