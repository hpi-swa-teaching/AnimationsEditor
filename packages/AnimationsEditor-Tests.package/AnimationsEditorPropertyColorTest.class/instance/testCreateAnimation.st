testing
testCreateAnimation
    | compositeAnimation newKey lastKey newValue firstAnimation |

    newValue := Color green.
    lastKey := 0.
    newKey := 1000.

    self property
        currentValue: newValue;
        frame: newKey;
        addKeyframe.

    compositeAnimation := self property createAnimationWith: newKey withPreviousKey: lastKey.

    self assert: compositeAnimation animations size = 2.
    firstAnimation := compositeAnimation animations at: 1.
    firstAnimation evaluateFinishBlock.
    self assert: self morph color = newValue.