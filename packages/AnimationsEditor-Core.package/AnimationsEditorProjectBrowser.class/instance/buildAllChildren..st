buildComponents
buildAllChildren: aBuilder 
	^ { self buildTextBoxProjectName: aBuilder.
		  self buildButtonNewProject: aBuilder.
		  self buildButtonOpenProject: aBuilder}.