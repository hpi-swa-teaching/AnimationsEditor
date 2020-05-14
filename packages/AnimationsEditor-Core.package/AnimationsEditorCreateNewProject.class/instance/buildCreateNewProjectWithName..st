as yet unclassified
buildCreateNewProjectWithName:	aBuilder
	^ aBuilder pluggableButtonSpec new
			model: self;
			label: 'create project';
			color: Color green;
			action: #openAnimationsEditor;
			frame: (LayoutFrame new
						topFraction: 0.51;
						bottomFraction: 1;
						rightFraction: 1;
						leftFraction: 0.49;
						yourself);
			yourself.