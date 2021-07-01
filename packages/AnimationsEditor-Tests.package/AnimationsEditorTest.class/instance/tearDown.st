running
tearDown
	| targetMorph |

	super tearDown.
	targetMorph := (self animationsEditorInstance propertyList second) targetMorph.
	"removes FlexShell"
	targetMorph isFlexed
		ifTrue: [targetMorph owner abandon].
	targetMorph abandon. 
	self animationsEditorInstance windowReference abandon.
	
	