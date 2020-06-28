# Custom Underline TextField

> Using SwiftUI

Simple reusable underline text field. You can use it with or without an icon image. 

For use just create an instance of the struct UnderlineTextFieldView like following in your content view:

1. With icon
```swift
UnderlineTextFieldView(
                    text: $userEmail,
                    textFieldView: TextField("", text: $userEmail),
                    placeholder: "Email Address",
                    imageName: emailIconName)
```
2. Without icon
```swift
UnderlineTextFieldView(
                    text: $userEmail,
                    textFieldView: TextField("", text: $userEmail),
                    placeholder: "Email Address")
```

If you have any questions please feel free to reach me out on twitter: [b_lorenzo10](https://twitter.com/b_lorenzo10)
