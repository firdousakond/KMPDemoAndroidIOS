import SwiftUI

@main
struct iOSApp: App {
    let viewModel = MuseumViewModel()
	var body: some Scene {
		WindowGroup {
            ContentView()
                .environmentObject(viewModel)
		}
	}
}
