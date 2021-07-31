initialize-release
on: anAnimationsEditorTimeline withProperty: aProperty withPosition: aPoint withExtent: anotherPoint

    ^ self basicNew
            timeline: anAnimationsEditorTimeline;
          property: aProperty;
            initialize;
          position: aPoint;
          extent: anotherPoint;
          initializeTrack;
            yourself.