# SystemColor

iOS 13 introduced [semantic `UIColor`s](https://developer.apple.com/documentation/uikit/uicolor/ui_element_colors) like `.label`, `.systemBackground`, etc. that will automatically adapt to light or dark mode. These colors aren't available to earlier versions of iOS, however, so to use them you'd have to litter your code with `if #available` everywhere.

To fix this, I generated a file that includes all of the new iOS 13 colors with light-themed fallbacks to support older iOS versions. To use it, just download [`SystemColor.swift`](./SystemColor.swift) and add it to your project. Reference colors using the `SystemColor` type instead of `UIColor` and you should be good to go!

## Example

```swift
self.view.backgroundColor = SystemColor.systemBackground
self.label.textColor = SystemColor.label
// etc.
```

## How did I make this?

I used a script to iterate over all of the new colors mentioned in the [documentation](https://developer.apple.com/documentation/uikit/uicolor/ui_element_colors), extracted their RGB values, and generated a Swift file with this information. You can check out the script in the [`generator.swift`](./generator.swift) file. I added the documentation comments manually.

## Contributing

If I missed a color or Apple adds more, add them to the file and submit a pull request!
