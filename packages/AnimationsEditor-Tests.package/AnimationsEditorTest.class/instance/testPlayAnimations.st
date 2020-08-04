initialize-release
testPlayAnimations
	| animationsEditorInstance morph positionProperty |
	
	animationsEditorInstance := AnimationsEditor open.
	morph := Morph new.
	morph openInWorld.
	animationsEditorInstance addTargetMorph: morph.
	
	self flag: #todo.
	"positionProperty := ((animationsEditorInstance propertyList at: 2) subproperties at: 1).
	positionProperty positionX: 555.
	positionProperty positionY: 555.

	animationsEditorInstance playAnimations.	
	morph abandon."
	
	animationsEditorInstance windowReference abandon.
	self assert: true. "no errors = good"