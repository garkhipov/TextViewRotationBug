# Summary
UITextView scrolls down on iPhone X on every rotation from landscape to portrait, even though it was scrolled to top initially.

# Steps to Reproduce
1. Open the attached sample project.
2. Build and run on a portrait iPhone X simulator or device.
3. **Observe**: full-screen text view (yellow background) is scrolled to top.
4. Rotate to landscape.
5. **Observe**: text view is still scrolled to top as expected.
6. Rotate back to portrait.
7. **Observe**: text view is slightly scrolled down. **Expected**: text view should still be scrolled to top.

Rotating back and forth scrolls the text view further and further down until it reaches the bottom of the content.

# Expected Results
If the text view was scrolled to top it should stay scrolled to top after rotations.

# Actual Results
Text view gets scrolled down on every rotation from landscape to portrait.

# Version/Build
- Xcode 9.2 (9C40b)
- iOS Simulator 11.2 (15C107), iOS 11.1.2 (15B202)
