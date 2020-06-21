as yet unclassified
addTargetMorph: aMorph
	| newTarget positionTarget|
	self flag: #todo.
	"Add custom target name"
	newTarget := AnimationsEditorProperty new.
	newTarget targetMorph: aMorph.
	newTarget title: (aMorph className).

	"Only for dev purpose"
	positionTarget := (AnimationsEditorPropertyPosition new).
	positionTarget positionX.
	positionTarget positionX: (aMorph position) x.
	positionTarget positionY: (aMorph position) y.
	newTarget subproperties add: positionTarget.
	self propertyList add: newTarget.
	self propertyTreeMorph update: self propertyTreeMorph getChildrenSelector.