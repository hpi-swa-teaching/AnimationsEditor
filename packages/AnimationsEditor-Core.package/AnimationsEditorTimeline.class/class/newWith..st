initialize-release
newWith: anAnimationsEditor

    ^ self 
            basicNew
            animationsEditor: anAnimationsEditor;
            initialize;
            yourself.