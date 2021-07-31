initialization
initializeText
    | text |
    
    text := StringMorph new
        contents: self property title;
        font: (StrikeFont familyName: 'Arial' pointSize: 9);
        yourself.
    text center: ((text width/2)+5 @ (self center y)).
    self addMorph: text.