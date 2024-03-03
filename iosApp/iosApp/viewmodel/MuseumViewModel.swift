import Foundation
import shared
import KMPNativeCoroutinesAsync


    class MuseumViewModel : ObservableObject {
        
        @Published
        var museumData : [MuseumObject] = []
        func startObserving() {
            Task {
                do {
                    let sequence = asyncSequence(for: MuseumRepository().getMuseumData())
                    
                    for try await data in sequence {
                        DispatchQueue.main.async {
                            self.museumData.append(contentsOf: data)
                        }
                       
                    }
                } catch {
                    print("Failed with error: \(error)")
                }
            }
        }
    }
