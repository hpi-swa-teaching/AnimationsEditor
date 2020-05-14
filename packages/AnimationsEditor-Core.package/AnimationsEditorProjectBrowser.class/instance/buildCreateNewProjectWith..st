as yet unclassified
buildCreateNewProjectWith:	aBuilder
	^ aBuilder pluggableButtonSpec new
			model: self;
			label: 'create new project';
			color: Color green;
			action: #openNewAnimationsEditorCreateNewProjectWindow;
			frame: (LayoutFrame new
						topFraction: 0.51;
						bottomFraction: 1;
						rightFraction: 1;
						leftFraction: 0.49;
						yourself);
			yourself.