# Pre-work - *TipCalcy*

**TipCalcy** is a tip calculator application for iOS.

Submitted by: **Pinkesh Sethi**

Time spent: **6** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user does not have to tap anywhere to use this app. Just launch the app and start typing.

The following **optional** features are in progress
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.

## Video Walkthrough 

Here is a walkthrough of implemented user stories:

![](gif/TipCalcyDemo.gif)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes
* A visible section change was coming on Percent segement when returing from the seetings screen after doing any chnage in default value of Tip Percent.It was due to to setting the percent segment value in wrong life cyclce event of View Controller. After analyzing the life cycle events of View controller fixed this issue. 

Describe any challenges encountered while building the app.

## License

   Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
