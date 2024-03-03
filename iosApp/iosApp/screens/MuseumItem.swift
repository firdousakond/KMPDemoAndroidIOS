//
//  MuseumItem.swift
//  iosApp
//
//  Created by Firdous Shahani on 24/02/24.
//  Copyright © 2024 orgName. All rights reserved.
//

import Foundation
import SwiftUI
import shared

struct MuseumItem: View {
    let item: MuseumObject
    var body: some View {
        VStack {
            AsyncImage (url: URL(string : item.primaryImageSmall)){ phase in
                switch phase {
                case .empty:
                    // Placeholder or loading view
                    ProgressView()
                case .success(let image):
                    // Loaded image
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: .infinity, height: 200) // Set the desired size
                        .clipped()
                case .failure:
                    // Error view
                    Image(systemName: "exclamationmark.triangle.fill")
                         .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: .infinity, height: 200) // Set the desired size
                        .clipped()
                        .foregroundColor(.red)
                    
                @unknown default:
                    Image(systemName: "exclamationmark.triangle.fill")
                         .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: .infinity, height: 200) // Set the desired size
                        .clipped()
                        .foregroundColor(.red)
                }
            }
            
            
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 180, maxHeight: 180)
            .cornerRadius(5)
            Text (item.title).font(.body).fontWeight(.bold).multilineTextAlignment(.leading).lineLimit(3)
            Text (item.artistDisplayName)
            Text (item.objectDate)
            
        } .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
