## Kotlin Multiplatform Museum App
This demo project showcases the power of Kotlin Multiplatform by creating a mobile application that retrieves museum data and seamlessly displays it on both Android and iOS devices.

### Key Features:

Cross-Platform Compatibility: Built using Kotlin Multiplatform, the app ensures code reusability by sharing business logic, allowing efficient development for both Android and iOS platforms.

Native UI on Android and iOS: Utilizing the native UI components for each platform, the app offers a consistent and platform-specific user experience on both Android and iOS devices.

### Development Stack:

- Language: Kotlin, Swift
- Ktor as HTTP client
- KMP Native coroutines for exposing data to IOS
- Kamel for downloading Images

Architecture: Follows a Kotlin Multiplatform architecture for shared business logic and platform-specific UI components.
### How to Run:

- Clone the repository.
- Build and run the project using Android Studio for Android.
- Navigate to the 'iosApp' directory in your project structure. Locate the 'iosApp.xcodeproj' file.
- Right-click on this file, and from the context menu, select "Open In" and then choose "Xcode."

Note: This project serves as a demonstration of the capabilities of Kotlin Multiplatform, offering a glimpse into the future of cross-platform development with Kotlin.
