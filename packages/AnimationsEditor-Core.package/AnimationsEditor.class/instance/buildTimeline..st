buildComponents
buildTimeline: aBuilder
	self flag: #todo.
	^ aBuilder pluggableScrollPaneSpec new
			model: self;
			"label: 'Test';"
			frame: (LayoutFrame new
						topFraction: 0.65;
						bottomFraction: 0.95;
						rightFraction: 1;
						leftFraction: 0;
						yourself);
			yourself.