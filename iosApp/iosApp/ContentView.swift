import SwiftUI
import shared
import KMPNativeCoroutinesAsync


struct ContentView: View {
    
    @EnvironmentObject private var viewModel: MuseumViewModel
    
    var body: some View {
        ListView(data: viewModel.museumData)
            .onAppear { self.viewModel.startObserving() }
    }
}

struct ListView: View {
    
    let data: [MuseumObject]
    @State private var selectedObject: MuseumObject?
    @State private var showBottomSheet = false
    
    var body: some View {
        
        VStack {
            Button {
                showBottomSheet.toggle()
            } label: {
                Text("Show Museum Data")
                    .frame(width: 280, height: 50)
                    .foregroundColor(.white)
                    .background(.purple)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .cornerRadius(10)
            }
            
            
        }
        .padding()
        .sheet(isPresented: $showBottomSheet, content: {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: .infinity, maximum: .infinity)),GridItem(.adaptive(minimum: .infinity, maximum: .infinity))], spacing: 10) {
                    
            ForEach ( data, id: \.objectID){ item in
                      MuseumItem(item: item)
                    }
                    
                }.padding(10)
            }
            .padding(5)
            .presentationDetents([.medium,.large])
        })
    
    }
    
}
 
