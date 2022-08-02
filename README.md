# AnimationsEditor
[![GitHub license](https://img.shields.io/github/license/hpi-swa-teaching/AnimationsEditor)](https://github.com/hpi-swa-teaching/AnimationsEditor/blob/master/LICENSE)
[![GitHub issues](https://img.shields.io/github/issues/hpi-swa-teaching/AnimationsEditor)](https://github.com/hpi-swa-teaching/AnimationsEditor/issues)
[![GitHub stars](https://img.shields.io/github/stars/hpi-swa-teaching/AnimationsEditor)](https://github.com/hpi-swa-teaching/AnimationsEditor/stargazers)
![GitHub Workflow Status (branch)](https://img.shields.io/github/workflow/status/hpi-swa-teaching/AnimationsEditor/smalltalkCI/master)
![GitHub repo size](https://img.shields.io/github/repo-size/hpi-swa-teaching/AnimationsEditor)
![GitHub All Releases](https://img.shields.io/github/downloads/hpi-swa-teaching/AnimationsEditor/total)
[![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/AnimationsEditor/badge.svg?branch=master)](https://coveralls.io/github/hpi-swa-teaching/AnimationsEditor?branch=master)

AnimationsEditor is a graphical tool for designing animations based on [Animations-Core](https://github.com/hpi-swa/animations). Bring your morphs to life using six handpicked animations. Effortlessly create animations in Squeak. Code less and achieve more - with AnimationsEditor.

![start](https://i.vgy.me/H0hUs9.gif)
![start2](https://i.vgy.me/KYq8mo.gif)

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

![AnimationsEditor open.](https://i.vgy.me/emJzQ9.gif)

### Select morph
3. Create a morph in your Squeak image - this is the morph we want to bring to life. In case you are just playing around, create a dummy Morph with `Morph new openInHand`
5. Click on *Add Morph*
6. Click on your previous created Morph using left mouse key with 'opt'/'alt' key pressed. With Windows OS you can also use the middle mouse key.

Your morph should have been added to the property inspector. The property inspector provides you up to five properties to animate, depending on the type of morph you added.

![add-morph](https://i.vgy.me/6wXBL7.gif)

### Supported animations

#### Morph color 
Enter a hex coded color into the text field or simply use the integrated color picker, add a keyframe and press *Play animations*.

![color](https://i.vgy.me/0F0GsL.gif)

#### Morph rotation

Enter an integer value in the text field, add a keyframe and press *Play animations*.

![rotation](https://i.vgy.me/Hr4GuV.gif)

#### Morph position
Enter the desired x- and y position the morph should move to, add a keyframe and press *Play animations*.

![position](https://i.vgy.me/pBoaEQ.gif)

#### Morph size
Enter the desired height and width of the morph, add a keyframe and press *Play animations*.

![size](https://i.vgy.me/MsY9wK.gif)

#### ImageMorph image source
Tell it where your image is saved, add a keyframe and press *Play animations*.

![image source](https://i.vgy.me/SsbYno.gif)

#### TextMorph text
Enter the text you want to show, add a keyframe and press *Play animations*.

![text](https://i.vgy.me/YJ1ccz.gif)

#### Activate Property
You can add keyframes to a selected property by activating it. On deactivation all keyframes you have added to it get deleted. 

![duration](https://i.vgy.me/CVo01i.gif)

#### Save animation
Configure your animation with AnimationsEditor and save everything in a JSON by pressing *Save animation*.

![saving](https://i.vgy.me/ioddhw.gif)

#### Load animation
Load in a previously saved animation by pressing *Load JSON*.

![loading](https://i.vgy.me/0lvlyv.gif)

#### The Timeline
The timeline shows you your created keyframes of the properties of your selected object. Its bounds are the starttime and the last keyframe exisiting for all propertys. You will never lose sight of your created animations! By clicking on a certain keyframe you can edit it. 

## Development
### CI Pipeline and coverage
The CI pipeline is implemented using GitHub actions, and push is executed on each piece of code. The AnimationsEditor package is therefor executed under mac, ubuntu and windows on Squeak 5.3, Squeak 5.2, Squeak 5.1 and Squeak Trunk. In addition, the codecoverage is monitored and the badges above are updated.


### Documentation
For our complete documentation, visit our [wiki](https://github.com/hpi-swa-teaching/AnimationsEditor/wiki), which contains the following parts: 

- Small overview to get into using the AnimationsEditor.

1. [Introduction to the AnimationsEditor](https://github.com/hpi-swa-teaching/AnimationsEditor/wiki/1-Introduction)

- See beyond the UI and learn how the AnimationsEditor is built and the code behind it.

2. [In-depth look](https://github.com/hpi-swa-teaching/AnimationsEditor/wiki/2-In-Depth)


## Contributors
- [Nick Bessin](https://github.com/SinNeax)
- [Max Hoffmann](https://github.com/Max784)
- [Franziska Hradilak](https://github.com/fhradilak)
- [Cedric Lorenz](https://github.com/cedric-lorenz)
- [Jerome Stephan](https://github.com/HerzogVonWiesel)
- [Lukas Wenner](https://github.com/lwenner)
- [Olesya Bauer](https://github.com/Ol-Ba)
- [Sara Grau-I-Blade](https://github.com/SaraGrau)
- [Nina Mohnke](https://github.com/NinaMohnke)
- [Nina Reznikova](https://github.com/ninaanre)
- [Paul Strobach](https://github.com/luap42)
- [Noel Bastubbe](https://github.com/Noel-Bastubbe)
- [Lorenz Kautzsch](https://github.com/lorenzkautzsch)

Legacy:
- [Joana Bergsiek](https://github.com/JoeAtHPI)
- [Lukas Hüller](https://github.com/lukashueller)
- [Tim Kuffner](https://github.com/1T1m)
- [David Matuschek](https://github.com/davidmatuschek)
- [Fabio Niephaus](https://github.com/fniephaus)
- [Patrick Rein](https://github.com/codeZeilen)
- [Jessica Ziegler](https://github.com/jssckrm)
- Contributors of [Animations-Core](https://github.com/hpi-swa/animations)
