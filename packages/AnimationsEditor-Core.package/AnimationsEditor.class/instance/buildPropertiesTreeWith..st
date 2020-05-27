initialize-release
buildPropertiesTreeWith: aBuilder
	^ aBuilder pluggableTreeSpec new
			model: self;
			nodeClass: AnimationsEditorPropertyWrapper;
			roots: #propertyList;
			frame: (LayoutFrame new
						topFraction: 0;
						bottomFraction: 0.6;
						rightFraction: 1;
						leftFraction: 0;
						yourself);
			yourself.	 		