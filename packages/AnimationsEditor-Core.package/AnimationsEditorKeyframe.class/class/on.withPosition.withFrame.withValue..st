initialize-release
on: anAnimationsEditorTrack withPosition: aPoint withFrame: aFrame withValue: aValue 

    ^ self basicNew
          track: anAnimationsEditorTrack;
        frame: aFrame;
        value: aValue; 
          initialize;
        setCenteredPosition: aPoint;
          yourself.