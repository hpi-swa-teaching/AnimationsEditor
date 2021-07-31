# AnimationsEditor
[![GitHub license](https://img.shields.io/github/license/hpi-swa-teaching/AnimationsEditor)](https://github.com/hpi-swa-teaching/AnimationsEditor/blob/master/LICENSE)
[![GitHub issues](https://img.shields.io/github/issues/hpi-swa-teaching/AnimationsEditor)](https://github.com/hpi-swa-teaching/AnimationsEditor/issues)
[![GitHub stars](https://img.shields.io/github/stars/hpi-swa-teaching/AnimationsEditor)](https://github.com/hpi-swa-teaching/AnimationsEditor/stargazers)
![GitHub Workflow Status (branch)](https://img.shields.io/github/workflow/status/hpi-swa-teaching/AnimationsEditor/smalltalkCI/master)
![GitHub repo size](https://img.shields.io/github/repo-size/hpi-swa-teaching/AnimationsEditor)
![GitHub All Releases](https://img.shields.io/github/downloads/hpi-swa-teaching/AnimationsEditor/total)
[![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/AnimationsEditor/badge.svg?branch=master)](https://coveralls.io/github/hpi-swa-teaching/AnimationsEditor?branch=master)

AnimationsEditor is a graphical tool for designing animations based on [Animations-Core](https://github.com/hpi-swa/animations). Bring your morphs to life using six handpicked animations. Effortlessly create animations in Squeak. Code less and achieve more - with AnimationsEditor.

![start](https://user-images.githubusercontent.com/44775014/89678706-f48ebd00-d8ef-11ea-9fc5-85e578b52a51.gif)

## Features
*AnimationsEditor* provides you with a broad toolset to bring your morphs to life.
Select any visible morph in your Squeak image and use up to five animations for offering your users a fully animated Squeak experience:
- `position` Let your morph wander around the screen.
- `color` Make your morphs chameleons: Change their color to any Hex coded color using a smooth transition effect.
- `rotation` Rotate your morph up to 360 degrees.
- `size` Let your morphs grow and shrink their size according to your needs.
- `image source` (Only for ImageMorphs) Animate the image used as your morph with a smooth transition. Bongo cat approved!
- `text` (Only for TextMorphs) Change the displayed text in your morph, great for storytelling!

Add multiple keyframes for each property at different timestamps to see an ever-evolving animation!

Fear of creating too complex animations and losing sight of whats happening? Fear not, for the timeline is always shown at the bottom to tell you when you have set keyframes for every property!

Watch your animations whenever you want with *Play Animations*. 
Have a great animation that you want to use as a blueprint for future animations? Save it as a JSON to your disk, share it, and load it back into the animation editor by using *Load JSON*.

## Installation

Ready for AnimationsEditor? Follow our lean [setup guide](https://github.com/hpi-swa-teaching/AnimationsEditor/wiki/Setup-Guide) to install AnimationsEditor.

## Getting Started with AnimationsEditor

Follow our step by step guide for using AnimationsEditor.

### Preparations
1. Install and open a supported Squeak image (see [setup guide](https://github.com/hpi-swa-teaching/AnimationsEditor/wiki/Setup-Guide)).
2. Open AnimationsEditor by executing `AnimationsEditor open`. Now you should see the GUI of AnimationsEditor.

*Pro Tip: Use 'Button for it' on this code snippet in order to have quick access to AnimationsEditor.*

![AnimationsEditor open.](https://user-images.githubusercontent.com/44775014/89674752-f5702080-d8e8-11ea-84b9-fefdee98dd1c.gif)

### Select morph
3. Create a morph in your Squeak image - this is the morph we want to bring to life. In case you are just playing around, create a dummy Morph with `Morph new openInHand`
5. Click on *Add Morph*
6. Click on your previous created Morph using left mouse key with 'opt'/'alt' key pressed. With Windows OS you can also use the middle mouse key.

Your morph should have been added to the property inspector. The property inspector provides you up to five properties to animate, depending on the type of morph you added.

![add-morph](https://user-images.githubusercontent.com/44775014/89675633-898eb780-d8ea-11ea-94bb-516f56e32fd8.gif)

### Supported animations

#### Start- & Endtime
Adjust the duration of your playing field with start- and endtime; Keyframes outside of these boundaries will not be used (but still saved if you want to adjust later!)

![duration](https://user-images.githubusercontent.com/44775014/89679426-5a2f7900-d8f1-11ea-8956-82c0c713c254.gif)

#### Morph color 
Enter a hex coded color into the text field or simply use the integrated color picker, add a keyframe and press *Play animations*.

![color](https://user-images.githubusercontent.com/44775014/89675836-e7bb9a80-d8ea-11ea-9e6a-58975dbdc97a.gif)

#### Morph rotation

Enter an integer value in the text field, add a keyframe and press *Play animations*.

![rotation](https://user-images.githubusercontent.com/44775014/89676840-9f04e100-d8ec-11ea-8d69-3dfc3cfdb655.gif)

#### Morph position
Enter the desired x- and y position the morph should move to, add a keyframe and press *Play animations*.

![position](https://user-images.githubusercontent.com/44775014/89677492-d4f69500-d8ed-11ea-9b57-56cee7050f4c.gif)

#### Morph size
Enter the desired height and width of the morph, add a keyframe and press *Play animations*.

![size](https://user-images.githubusercontent.com/44775014/89677873-767de680-d8ee-11ea-8102-f89cbbc27891.gif)

#### ImageMorph image source
Tell it where your image is saved, add a keyframe and press *Play animations*.

![image source](https://user-images.githubusercontent.com/44775014/89675836-e7bb9a80-d8ea-11ea-9e6a-58975dbdc97a.gif)

#### TextMorph text
Enter the text you want to show, add a keyframe and press *Play animations*.

![text](https://user-images.githubusercontent.com/44775014/89675836-e7bb9a80-d8ea-11ea-9e6a-58975dbdc97a.gif)

### Save animation
Configure your animation with AnimationsEditor and save everything in a JSON by pressing *Save animation*.

![saving](https://user-images.githubusercontent.com/44775014/89681241-d5def500-d8f4-11ea-8f92-2d9bdabecb0a.gif)

### Load animation
Load in a previously saved animation by pressing *Load JSON*.

![loading](https://user-images.githubusercontent.com/44775014/89681241-d5def500-d8f4-11ea-8f92-2d9bdabecb0a.gif)

### The Timeline
The timeline shows you your created keyframes of the properties of your selected object. Its bounds are the start- and endtime. You will never lose sight of your created animations!

![timeline](https://user-images.githubusercontent.com/44775014/89681241-d5def500-d8f4-11ea-8f92-2d9bdabecb0a.gif)


## Development
### CI Pipeline and coverage
The CI pipeline is implemented using GitHub actions, and push is executed on each piece of code. The AnimationsEditor package is therefor executed under mac, ubuntu and windows on Squeak 5.3, Squeak 5.2, Squeak 5.1 and Squeak Trunk. In addition, the codecoverage is monitored and the badges above are updated.


### Documentation
For our complete documentation, visit our [wiki](https://github.com/hpi-swa-teaching/AnimationsEditor/wiki), which contains the following parts: 
- [Architecture of AnimationsEditor](https://github.com/hpi-swa-teaching/AnimationsEditor/wiki/Architecture-of-AnimationsEditor)
- [Coding conventions](https://github.com/hpi-swa-teaching/AnimationsEditor/wiki/Coding-conventions)
- [Features](https://github.com/hpi-swa-teaching/AnimationsEditor/wiki/Features)
- [Meaning of technical terms](https://github.com/hpi-swa-teaching/AnimationsEditor/wiki/Meaning-of-technical-terms)
- [Presentation Slides](https://github.com/hpi-swa-teaching/AnimationsEditor/wiki/Presentation-Slides)
- [Setup Guide](https://github.com/hpi-swa-teaching/AnimationsEditor/wiki/Setup-Guide)


## Contributors
- [Nick Bessin](https://github.com/SinNeax)
- [Max Hoffmann](https://github.com/Max784)
- [Franziska Hradilak](https://github.com/fhradilak)
- [Cedric Lorenz](https://github.com/cedric-lorenz)
- [Jerome Stephan](https://github.com/HerzogVonWiesel)
- [Lukas Wenner](https://github.com/lwenner)

Legacy:
- [Joana Bergsiek](https://github.com/JoeAtHPI)
- [Lukas Hüller](https://github.com/lukashueller)
- [Tim Kuffner](https://github.com/1T1m)
- [David Matuschek](https://github.com/davidmatuschek)
- [Fabio Niephaus](https://github.com/fniephaus)
- [Patrick Rein](https://github.com/codeZeilen)
- [Jessica Ziegler](https://github.com/jssckrm)
- Contributors of [Animations-Core](https://github.com/hpi-swa/animations)
