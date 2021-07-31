initialization
addTimebar 
    | timebar |
    
    self timebar ifNotNil: [self timebar abandon].
    timebar := AnimationsEditorTimebar on: self withExtent: self width @ self trackHeight. 
    self addMorph: timebar.
    self timebar: timebar. 
    self timebar updateScale. 