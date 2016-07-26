# Pickin Fruit

🍎 🍊 🍌 🍐 🍇 🍉 🍓 🍒 🍍

## Objectives

 * Create a fruity slot game using `UIPickerView`, `UIPickerViewDelegate`, and `UIPickerViewDataSource`

## Introduction
In this lab you will use `UIPickerView` to make a slot game called, 'Pickin Fruit'. Each component in our picker view will represent a reel of fruit within our slot machine. `UIPickerView` is similar to a `UITableView` because it requires adopting a delegate and a data source. These adoptions are necessary to provide the picker view with the data it needs to construct itself. Check out Apple's documentation about [UIPickerView](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIPickerView_Class/), [UIPickerViewDelegate](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIPickerViewDelegate_Protocol/index.html#//apple_ref/occ/intf/UIPickerViewDelegate), and [UIPickerViewDataSource](https://developer.apple.com/library/ios/documentation/iPhone/Reference/UIPickerViewDataSource_Protocol/index.html#//apple_ref/occ/intf/UIPickerViewDataSource). The storyboard is already set up with a picker view, a result label, and a spin button. The outlets for the label and the button are already included in the `ViewController` class, along with an IBAction for the button. Your `ViewController` class has an instance property array that contains the data (fruit).

### 1. Implement the delegate protocols on the picker view
---
 * Create an outlet property for your picker view called `fruitPicker`.
 * Implement the **2** necessary data source delegate methods to provide data to the picker view. The picker view should have **3** components.
 * Implement the `pickerView(_:titleForRow:forComponent:)` method to set the title from the strings within the array.

### 2. Handle winning and losing scenarios
---
 * Inside the `spinButton` IBAction method, use the `selectRow(_:inComponent:animated:)` and `selectedRow(inComponent:)` methods to spin the picker and process the outcome.
 * Update the text value on `resultLabel` with **"TRY AGAIN"** or **"WINNER!"** depending on the outcome of the spin.
 * Run the test.

## Advanced
 * Apple keeps the functionality of the picker view animation private but the duration is approximately 0.3 seconds. Animate the appearance of the label and make it blink a couple of times before disappearing.
 * Change the count for the `UIPickerViewDataSource` to be greater than the array in order to make the spin appear more slot-machine-like. You can also start the picker view at different positions so the fruit will cover the view top to bottom.

![Animated Slot Machine](https://s3.amazonaws.com/learn-verified/animated-slot-machine.gif)