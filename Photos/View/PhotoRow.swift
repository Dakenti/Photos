//
//  PhotoRow.swift
//  Photos
//
//  Created by Darkhan Serkeshev on 30.08.2021.
//

import SwiftUI
import Kingfisher

struct PhotoRow: View {
    let photo: Photo
    let imageSize: CGFloat = 100
    
    var body: some View {
        HStack(alignment: .top) {
            if let imageURL = URL(string: photo.thumbnailUrl) {
                KFImage(imageURL)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageSize, height: imageSize)
                    .clipped()
            }
            VStack(alignment: .leading, spacing: 4) {
                Text(photo.title)
                    .font(.headline)
                Text("id: \(photo.id)")
            }
        }
        
    }
}

struct PhotoRow_Previews: PreviewProvider {
    static var previews: some View {
        PhotoRow(photo: Photo.example())
    }
}
