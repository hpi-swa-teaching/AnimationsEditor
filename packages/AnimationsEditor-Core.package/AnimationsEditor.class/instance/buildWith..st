initialize-release
buildWith: aBuilder
	| mainWindow |
	mainWindow := aBuilder build:  (aBuilder pluggableWindowSpec new
			model: self;
			label: #animationsName;
			extent: 1000@700;
			children: {self buildPropertiesBarWith: aBuilder . self buildTimeline: aBuilder}
			yourself).
	self flag: 'Problematische Stelle'.
	mainWindow submorphs do: [:each | 
   		each submorphs size == 0
			ifTrue:[
      			each class == PluggablePanelMorph
					ifTrue: [tlp := each]
 			]   	
	].
	^mainWindow