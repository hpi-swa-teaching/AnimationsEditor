as yet unclassified
step
	"duration :=  (self timeline endTime - self timeline startTime)/1000. --> richtige Zeit
	duration :=  (self timeline endTime - self timeline startTime).
	offset := self lineSegmentWidth / duration.
	self movingLine position: self movingLine position + (offset@0)."