initialize-release
insertMorph: aMorph To: aPluggableSpecMorph
	aPluggableSpecMorph children removeAll.
	aPluggableSpecMorph children add: aMorph.
 	aPluggableSpecMorph update: (aPluggableSpecMorph getChildrenSelector).
	"aMorph bounds: aPluggableSpecMorph bounds."
			
	