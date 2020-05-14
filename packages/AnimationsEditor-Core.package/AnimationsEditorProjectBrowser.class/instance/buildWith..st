as yet unclassified
buildWith: aBuilder
	^ aBuilder build:  (aBuilder pluggableWindowSpec new
			model: self;
			label: 'Project Browser';
			extent: 300@125;
			children: {self buildExistingProjectsListWith: aBuilder . self buildCreateNewProjectWith: aBuilder . self buildOpenExistingProjectWith: aBuilder}
			yourself).