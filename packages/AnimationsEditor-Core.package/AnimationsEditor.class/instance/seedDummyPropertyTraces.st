initialize-release
seedDummyPropertyTraces
	| aMorph bMorph cMorph tlp |
	self flag: #todo.
	
	"The first Panel is the Timeline panel"
	tlp := (self emptyPanels at: 1).
	tlp getChildrenSelector: #dummyList.
	tlp children removeAll.
	
	aMorph := RectangleMorph new
				color: Color blue;
				yourself.
	bMorph := RectangleMorph new
				color: Color red;
				yourself.
	cMorph := RectangleMorph new
				color: Color yellow;
				yourself.
  	tlp children add: aMorph.
   	tlp children add: bMorph.
   	tlp children add: cMorph.
   	tlp update: tlp getChildrenSelector.
	aMorph bounds: tlp bounds.
	bMorph bounds: tlp bounds.
	cMorph bounds: tlp bounds.
	
	aMorph height: (tlp height / 3).
	bMorph height: (tlp height / 3).
	cMorph height: (tlp height / 3).
	
	bMorph y: aMorph y - aMorph height.
	cMorph y: bMorph y - bMorph height.
