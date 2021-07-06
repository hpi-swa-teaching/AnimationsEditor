eventHandling
addTimeline 
	| firstMorph lastMorph tlp newHeight |
	
	tlp := self ui emptyPanels at: 1.
	tlp getChildrenSelector: #timelines.
	firstMorph := RectangleMorph new color: Color lightGray;
				 	yourself.
	
	tlp children add: firstMorph.
	tlp update: tlp getChildrenSelector.
	
	firstMorph bounds: tlp bounds.
	firstMorph height: tlp height.
	
	newHeight := tlp height / self ui timelines size.
	
	self ui timelines size > 1
	ifTrue:[
		lastMorph := Morph new position: tlp position; height: 0; yourself.
		self ui timelines collect: [:each | 
			each position setX: (each position x) setY: (lastMorph position y  + lastMorph height).
			each height: newHeight.
			lastMorph := each]].
	
	