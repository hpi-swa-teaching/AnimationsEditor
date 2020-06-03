buildComponents
buildButtonCreateProjectName: aBuilder 
	^ self
			buildButton: aBuilder
			side: #right
			label: 'create project'
			action: #openAnimationsEditor.