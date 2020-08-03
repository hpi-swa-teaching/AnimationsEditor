eventHandling
addTimeline 
	| aMorph lastMorph tlp newHeight |

	tlp := self emptyPanels at: 1.
	tlp getChildrenSelector: #timelines.
	aMorph := RectangleMorph new color: Color blue;
				 	yourself.
	tlp children add: aMorph.
	tlp update: tlp getChildrenSelector.
	
	aMorph bounds: tlp bounds.
	newHeight := tlp height / self timelines size.
	Transcript show: newHeight.
	aMorph height: newHeight.
	self timelines size > 1
	ifTrue:[
		lastMorph := Morph new position: tlp position; height: 0; yourself.
		(self timelines at: self timelines size) color: Color red.
		self timelines collect: [:each | 
			each height: newHeight.
			each position setX: (each position x) setY: (lastMorph position y  + lastMorph height).
			lastMorph := each]].
	
	