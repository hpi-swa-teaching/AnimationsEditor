initialize-release
buildPropertiesTreeWith: aBuilder
	^  aBuilder pluggableTreeSpec new
			model: self;
			nodeClass: AnimationsEditorPropertyWrapper;
			roots: #propertyList;
			getSelected: #selectedTreeNode;
			setSelected: #selectedTreeNode:;
			autoDeselect: false;
			frame: (LayoutFrame new
						topFraction: 0;
						bottomFraction: 1;
						rightFraction: 1;
						leftFraction: 0;
						yourself);
			yourself.	 	