//
//  Article.swift
//  SwiftUINavigation
//
//  Created by Simon Ng on 22/7/2022.
//

import Foundation

struct Article: Identifiable {
    var id = UUID()
    var title: String
    var author: String
    var rating: Int
    var excerpt: String
    var image: String
    var content: String
}

#if DEBUG

let articles = [Article(title: "Vision Framework: Working with Text and Image Recognition", author: "Sai Kambampati", rating: 4, excerpt: "2 years ago, at WWDC 2017, Apple released the Vision framework, an amazing, intuitive framework that would make it easy for developers to add computer vision to their apps.", image: "vision-framework", content: "2 years ago, at WWDC 2017, Apple released the Vision framework, an amazing, intuitive framework that would make it easy for developers to add computer vision to their apps. Everything from text detection to facial detection to barcode scanners to integration with Core ML was covered in this framework.\n\nThis year, at WWDC 2019, Apple released several more new features to this framework that really push the field of computer vision. That’s what we’ll be looking at in this tutorial.\n\nFor many years now, Snapchat has reigned as the popular social media app among teens. With its simple UI and great AR features, high schoolers around the world love to place cat/dog filters themselves. Let’s flip the script!"),
                Article(title: "The Comprehensive Guide to the State Management in iOS", author: "Alexey Naumov", rating: 4, excerpt: "There are many challenges in the software development, but there is one beast that tends to screw things up much more often than the others: the problem of app’s state management and data propagation.", image: "state-management", content: "There are many challenges in the software development, but there is one beast that tends to screw things up much more often than the others: the problem of app’s state management and data propagation.\n\nSo what can go wrong with the state, which is simply a data intended for reading and writing?\n\nThere are always two questions arising for a developer when a new piece of state is introduced: “Where to store the state data?” and “How to notify the other entities in the app about the state updates?”. Let’s cover each one in details and see if there is a silver bullet to the problem."),
                Article(title: "Using Swift Protocols to Manage App Configuration", author: "Gabriel Theodoropoulos", rating: 4, excerpt: "Hello and welcome to a new tutorial! One of the most common concepts met and used in Swift by all developers is protocols, and I don’t think there’s even one developer who doesn’t know about them.", image: "protocols", content: "Hello and welcome to a new tutorial! One of the most common concepts met and used in Swift by all developers is protocols, and I don’t think there’s even one developer who doesn’t know about them. Protocols can be used to serve various purposes, however, what remains always the same is what the documentation from Apple says:\n\nA protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality. The protocol can then be adopted by a class, structure, or enumeration to provide an actual implementation of those requirements. Any type that satisfies the requirements of a protocol is said to conform to that protocol.\n\nIn fewer words, a Swift protocol defines a number of methods and properties that the adopting types (classes, structures, enumerations) must implement. All those defined methods and properties are called requirements."),
                Article(title: "Drawing a Border with Rounded Corners", author: "Simon Ng", rating: 4, excerpt: "With SwiftUI, you can easily draw a border around a button or text (and it actually works for all views) using the border modifier.", image: "swiftui-button", content: "With SwiftUI, you can easily draw a border around a button or text (and it actually works for all views) using the border modifier. Say, for example, you want to create a button like this.\n\nWe can apply the border modifier on a button object to create a button with a coloured border.\n\nBut what if your designer wants you to create a rounded border button like this? How can you do that?\n\nIn the code, we use a RoundedRectangle and its stroke modifier to create the rounded border. You can modify the color and line width to adjust its appearance."),
                Article(title: "Building a Simple Text Editing App", author: "Gabriel Theodoropoulos", rating: 5, excerpt: "Today we are going to focus on a commonly used family of controls which are vital to every application. Their primary purpose is to gather user input as well as to display certain message types to users. We are going to talk about text controls.", image: "macos-programming", content: "Welcome to another tutorial where we’ll keep exploring fundamental stuff on macOS programming world. Today we are going to focus on a commonly used family of controls which are vital to every application. Their primary purpose is to gather user input as well as to display certain message types to users. We are going to talk about text controls.\n\nI don’t think there’s ever existed a meaningful application without using any kind of text control. Labels, text fields and text views are types of UI controls that are met in every application, even if not all of them are present. Due to their purpose and their intended use, text controls are usually of the first ones developers use into an app. And even though there’s not any kind of mystery or magic hidden and using them is relatively straightforward, a post dedicated to text controls is necessary so we have the chance to walk through their specific details and clear a few things out."),
                Article(title: "Building a Flutter App with Complex UI", author: "Lawrence Tan", rating: 4, excerpt: "Hello there! Welcome to the second tutorial of our Flutter series. In the last tutorial, you learned the basics of building a Flutter app. So if you have not gone through it, please take a pit stop here, visit it first before proceeding with this tutorial.", image: "flutter-app", content: "Hello there! Welcome to the second tutorial of our Flutter series. In the last tutorial, you learned the basics of building a Flutter app. So if you have not gone through it, please take a pit stop here, visit it first before proceeding with this tutorial. In today’s tutorial, we will build an app with complex UI with the Flutter framework. We will explore quite a lot of components. By going through the tutorial, you will learn to implement: Textfields with Validation, Carousel Slider, Complex List View, etc.\n\nIf any of the above raises your eyebrow, then you are here at the right place! Tighten your seatbelt as this tutorial will take you on a ride to learn all these concepts, by building an app called Moments.")
]

#endif

