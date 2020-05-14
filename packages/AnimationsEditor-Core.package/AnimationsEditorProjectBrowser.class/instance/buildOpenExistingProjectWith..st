as yet unclassified
buildOpenExistingProjectWith:	aBuilder
	^ aBuilder pluggableButtonSpec new
			model: self;
			label: 'open existing project';
			color: Color red;
			action: #openExistingProject;
			frame: (LayoutFrame new
						topFraction: 0.51;
						bottomFraction: 1;
						rightFraction: 0.49;
						leftFraction: 0;
						yourself);
			yourself.