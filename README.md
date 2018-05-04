# Sorcery with Sourcery

The slides of this presentation is available at [Spearkdeck](https://speakerdeck.com/marciliojrs/sorcery-with-sourcery).

This repository contains two samples of how to use [Sourcery](https://github.com/krzysztofzablocki/Sourcery) presented at 29th CocoaHeads BH.

## Getting Started

### Sample Project

You should have the latest versions of CocoaPods and Xcode. To run the project you need to install the dependency using `pod install` command and open the Workspace.

Sourcery will run in every build through a build phase.

### Sample Playground

You will need to install Sourcery through [Homebrew](https://github.com/krzysztofzablocki/Sourcery#installation). To run Sourcery in daemon mode for this sample you should use this command:

`sourcery --sources Sourcery.playground/Sources/input.swift --output Sourcery.playground/Sources/output.generated.swift --templates template.stencil --watch`

PS: You may need to add sourcery binary in your PATH environment variable.