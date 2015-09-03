
# Codepath-Tiptoe
Assignment for codepath. Tiptoe is a tip calculator app.

# User Stories

### Bill Input
Story:  
Ability to input the bill amount.

Acceptance:  
✔︎ Bill row should be focused on load  
✔ Numpad should be up by default  
✘ Textfield should be in currency format  
✘ Input should be in ATM style

Demo:  
![Bill Input](https://github.com/christophersybico/Codepath-Tiptoe/blob/master/Demos/tiptoeDemo_billInput_v2.gif "Bill Input")

### Tip Input
Story:  
Ability to change the tip percentage. Rounding off the tip is preffered (this is my personal way of writing a tip because it’s easy to copy & write it on the bill)

Acceptance:  
✔︎ Tip choices: 18%, 20%, 22%  
✔︎ Tip value should be updated when tip is changed  
✔ iOS Picker View is the preffered input method for choosing tip percentage  
✘ By default, tip value is rounded to nearest decimal

Demo:  
![Tip Input](https://github.com/christophersybico/Codepath-Tiptoe/blob/master/Demos/tiptoeDemo_tipInput_v2.gif "Tip Input")

### Split the bill with tip included
Story:  
Ability to split the tip by 2 or more people  

Acceptance:  
✘ By dragging the card from right to left, it should show you a different card with the bill split by 2 or 3

### Share
Story:  
Ability to share the bill w/ tip to someone using text or email

Acceptance:  
✘ By tapping on the share icon, it will give you two choices; email and text

Demo:  
![Share](https://github.com/christophersybico/Codepath-Tiptoe/blob/master/Demos/tiptoeDemo_share_v1.gif "Share")

Resource:
[ActivityViewController from The Code Lady](https://www.youtube.com/watch?v=91mL-eDl6x4)

### Settings
Story:  
Ability to turn on/off the rounding off of tip.

Acceptance:  
✔︎ By tapping on the settings icon, it will bring up a modal. The modal screen consists of: a switch which can turn on/off tip round-off, and a done button.  
✘ If switch is on, it should round off the tip  
✘ If switch is off, it should NOT round off the tip

Demo:  
![Settings](https://github.com/christophersybico/Codepath-Tiptoe/blob/master/Demos/tiptoeDemo_settings_v1.gif "Settings")

### Custom Keyboard
Story:  
Nicer looking numpad

### Custom Picker
Story:  
Nicer looking tip picker

### Log Hours
Aug 16, 2015: 6 Hours  
Sep 2, 2015: 6 Hours  
Sep 3, 2015: 4 Hours  
