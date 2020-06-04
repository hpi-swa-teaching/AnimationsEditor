buildComponents
buildWith: aBuilder
	self toolBuilder: aBuilder.
	self buildMainWindowWith: aBuilder.
	self initializePropertyEditorPanel.
	self flag: 'Problematische Stelle'.
	mainWindow submorphs do: [:each | 
   		each submorphs size == 0
			ifTrue:[
      			each class == PluggablePanelMorph
					ifTrue: [tlp := each]
 			]   	
	].
	^mainWindow
