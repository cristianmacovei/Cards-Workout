# cardworkout is a cards game that generates random cards, each having its own workout exercise. 

The viewcontrollers are made using the storyboards, being that it has a design which needed to have some basic UI/UX.
The Rules viewcontroller is a pop-up type VC that tells the general rules of the game. This can be dismissed by pressing a "close" button in the top-right corner.
The card.swift is a file which stores the entire deck of the cards using the appropriate images to show these as they are being generated.

In the CardSelectionVC, there is a timer that shuffles the deck continuausly, until the user stops the timer using the appropriate button. The timer also shows each card as it is being shuffled, having an interval of .05 seconds for each card. Once the button is stopped, the timer will invalidate, showing the last card. 

Upon tapping on the button "Rules", the aforementioned "Rules" viewcontroller will pop-up. 
