buildComponents
insertMorph: aMorph Into: aPluggableSpecMorph 
	aPluggableSpecMorph children removeAll.
	aPluggableSpecMorph children add: aMorph.
	aPluggableSpecMorph update: aPluggableSpecMorph getChildrenSelector.
	aMorph bounds: aPluggableSpecMorph bounds.