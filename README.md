# DLAngle

Provides an abstraction for mathematical angle.
Because the angle is a type, errors such as:

* sum or subtract a degree angle with a radian angle
* pass degree angle to a trigonometric function from standard library

are either not possible or catched at compile time.
Support convenience initializers, operators and functions for natural, fast and productive workflow.

## Supported Operating Systems

* **Linux** (check [Swift.org](https://swift.org) for more information regard Swift support on Linux)
* **macOS** 10.10 and later
* **iOS** 9.0 and later
* **watchOS** 2.0 and later
* **tvOS** 9.0 and later

## Installation

### Swift Package Manager

If you don't have a [Package](https://swift.org/package-manager/#example-usage) file, create one.

Add a new dependency:

`
.Package(url: "https://github.com/davidlivadaru/DLAngle.git",
                 majorVersion: 0)
`

Save the file, then fetch the new dependencies:

`swift package fetch`

Open the path folder Packaged/DLAngle-0.1.2/DLAngle/ and the Xcode project from into your application project/workspace. Now expand the Products group from DLAngle project and drag the framework for which OS you target into your application project's Embed Framework section.


### Carthage

Add the new dependecy [Cartfile](https://github.com/Carthage/Carthage/blob/master/Documentation/Artifacts.md#cartfile):

`
github "davidlivadaru/DLAngle"
`

Save the file, fetch the new dependencies:

`
carthage update
`

Open the folder than Carthage/Build/OS/ and drag the framework for which OS you target into your application project's Embed Framework section.

If you're use .framework file do not forget to the configure the [copy frameworks](https://github.com/Carthage/Carthage#if-youre-building-for-ios-tvos-or-watchos) step to strip debug architectures from binary file.

## Concepts

Documentations, more tests, examples, images, CI and other stuff *Coming soon(TM)*.

A feature which would nice to have is to throw exceptions when a function is called with an invalid argument(e.g.: calling tan function with Pi/2 argument).

## Contribution

[Open an issue](https://github.com/davidlivadaru/DLAngle/issues/new) if you have found a bug, have a feature request or provide feedback.

[Open a pull request](https://github.com/davidlivadaru/DLAngle/compare) if you fixed a bug and want to share it with the community.

##License

See [LICENSE](LICENSE) file.