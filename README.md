# P O P F L I X

## Overview
PopFlix is a Swift iOS app that leverages the power of Swift, and SwiftData for offline support, and multithreading using async/await. Following the MVVM (Model-View-ViewModel) architecture and adhering to SOLID principles, PopFlix is not just an app but a showcase of best practices in iOS development.
## Technologies Used
- Swift
- SwiftData (for offline support)
- Async/Await (for efficient multithreading)
- MVVM (Model-View-ViewModel) architecture
- SOLID principles
## Features
- Discover and explore a vast collection of movies
- Seamless offline support with SwiftData
- Responsive and efficient multithreading using async/await
- Elegant user interface designed for an exceptional user experience
## Upcoming Features
We are continuously working on enhancing PopFlix. Stay tuned for upcoming features, including:
## Getting Started
### 1. Clone the Repository:

``` bash
git clone git@github.com:gichukipaul/PopFlix.git

```
### 2. Replace TMDB API Key:
- Obtain your API key from TMDB (The Movie Database).
- In the Xcode project, locate the Constants.swift file.
- Replace the placeholder for the TMDB API key with your own key:

``` swift
struct API {
    static let tmdbApiKey = "YOUR_API_KEY_HERE"
}

```

### 3. Run the Project:
- Open the PopFlix.xcodeproj file with Xcode.
- Build and run the project on your preferred iOS simulator or device.
- Ensure that you have Xcode installed and configured on your machine. If you encounter any issues or have questions, refer to the project documentation or feel free to reach out for assistance.
- 
## Contributing
Contributions to PopFlix are welcome! If you find a bug, have a feature request, or want to contribute in any way, please follow our [contribution guidelines](CONTRIBUTING.md).

## Acknowledgments
We would like to express our gratitude to the TMDB, and all contributors who have played a role in making PopFlix possible.
- Figma Design Credit: The design elements and visual aesthetics of PopFlix are based on the incredible work by Francisco Santos, whose design can be found on Figma: [Francisco Santos](https://www.figma.com/community/file/1124835379376527920).

