as yet unclassified
buildWith: aBuilder
	^ aBuilder build:  (aBuilder pluggableWindowSpec new
			model: self;
			label: 'create new project';
			extent: 300@125;
			children: {self buildNewProjectNameTextBox: aBuilder . self buildCreateNewProjectWithName: aBuilder}
			yourself).