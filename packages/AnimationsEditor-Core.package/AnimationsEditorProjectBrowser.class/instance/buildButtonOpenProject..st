buildComponents
buildButtonOpenProject: aBuilder 
	^ self
			buildButton: aBuilder
			side: #left
			label: 'open existing project'
			action: #openExistingProject.