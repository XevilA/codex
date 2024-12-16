# Dotmini X One 🚀

## Overview

Dotmini X One is a SwiftUI-powered iOS application that demonstrates modern mobile app development with a clean, intuitive interface.

## Project Structure

```swift

// Main App Entry Point

struct ContentView: View {

    var body: some View {

        NavigationView {

            // Main navigation buttons

            VStack(spacing: 25) {

                Text("Welcome to Dotmini X One")

                    .font(.largeTitle)

                NavigationButton(destination: ProductsView(), title: "Our Products")

                // More navigation buttons...

            }

        }

    }

}

```

## Key Views

### 1. Newsroom View

Dynamically loads and displays tech news articles:

```swift

struct NewsroomView: View {

    let articles = [

        ("Create ML Training", "image_url", "Exploring Apple's Create ML"),

        ("M4 Pro and M4 Max", "image_url", "Apple's latest chip series")

    ]

    var body: some View {

        ScrollView {

            ForEach(articles, id: \.0) { article in

                AsyncImage(url: URL(string: article.1)) { phase in

                    // Robust image loading with error handling

                    switch phase {

                    case .success(let image):

                        image.resizable()

                    case .failure:

                        Image(systemName: "photo.fill")

                    case .empty:

                        ProgressView()

                    }

                }

            }

        }

    }

}

```

### 2. About Developer View

Showcases developer profile with GitHub avatar:

```swift

struct AboutDeveloperView: View {

    var body: some View {

        ScrollView {

            AsyncImage(url: URL(string: "github_avatar_url")) { phase in

                switch phase {

                case .success(let image):

                    image

                        .resizable()

                        .clipShape(Circle())

                default:

                    Image(systemName: "person.circle.fill")

                }

            }

            Text("Tirawat Nantamas")

            Text("Professional Software Developer")

        }

    }

}

```

## Features

- 🏠 Responsive Navigation

- 📱 Dynamic Content Loading

- 🖼️ Async Image Handling

- 📰 Newsroom Updates

- 👤 Developer Profile

## Technical Details

- **Language**: Swift

- **Framework**: SwiftUI

- **Minimum iOS**: 16.0+

- **Xcode**: 15.0+

## Installation

1\. Clone the repository

2\. Open in Xcode

3\. Build and Run

## Developer Contact

- **Email**: dev@dotmini.in.th

- **Phone**: 0642230671

- **Website**: www.dotmini.in.th

## Skills

- Python

- Go

- Rust

- SwiftUI

- Firebase

- TensorFlow

## License

Open Source - Check repository for details

---
## Screenshots

### Home Screen
![Home Screen](https://yoursite.com/path/to/homescreen.png)

### Newsroom
![Newsroom](https://yoursite.com/path/to/newsroom.png)

### About Developer
![About Developer](https://yoursite.com/path/to/aboutdev.png)

Crafted with ❤️ by Tirawat Nantamas
