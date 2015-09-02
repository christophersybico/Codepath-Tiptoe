
# Codepath-Tiptoe
Assignment for codepath

### How many hours did it take to complete?
6-7 Hours - had to spend a little bit of time on the design

### Optional stories:
1. Change the colors and fonts of the views
2. App Icon
3. Added focus on bill textfield on load
4. Hide status bar
5. Added background image

### Recording:
![Alt text](https://github.com/christophersybico/Codepath-Tiptoe/blob/master/Tiptoe%20Demo.gif "Tipteo Demo")

### Sketch:
![Alt text](https://github.com/christophersybico/Codepath-Tiptoe/blob/master/Tiptoe%20Sketch.jpeg "Tiptoe Sketch")

# User Stories

### Bill Input
Story:  
Ability to input the bill amount.

Acceptance:  
✔︎ Bill row should be focused on load  
✔ Numpad should be up by default  
✘ Textfield should be in currency format

### Tip Input
Story:  
Ability to change the tip percentage. Rounding off the tip is preffered (this is my personal way of writing a tip because it’s easy to copy & write it on the bill)

Acceptance:  
✔︎ Tip choices: 18%, 20%, 22%  
✔︎ Tip value should be updated when tip is changed  
✘ By default, tip value is rounded to nearest decimal  
✘ iOS Picker View is the preffered input method for choosing tip percentage

### Split the bill with tip included
Story:  
Ability to split the tip by 2 or more people  

Acceptance:  
✘ By dragging the card from right to left, it should show you a different card with the bill split by 2 or 3

### Share
Story:  
Ability to share “this” to someone using text or email

Acceptance:  
✘ By tapping on the share icon, it will give you two choices; email and text

### Settings
Story:  
Ability to turn on/off the rounding off of tip.

Acceptance:  
✔︎ By tapping on the settings icon, it will bring up a modal. The modal screen consists of: a switch which can turn on/off tip round-off, and a done button.  
✘ If switch is on, it should round off the tip  
✘ If switch is off, it should NOT round off the tip

### Custom Keyboard
Story:  
Nicer looking numpad

### Custom Picker
Story:  
Nicer looking tip picker