initialization
deleteTracks
    self submorphs do: [ :morph | 
		(morph class = AnimationsEditorTrack) ifTrue: [morph abandon]].