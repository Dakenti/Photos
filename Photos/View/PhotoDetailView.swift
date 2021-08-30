//
//  PhotoDetailView.swift
//  Photos
//
//  Created by Darkhan Serkeshev on 30.08.2021.
//

import SwiftUI
import Kingfisher

struct PhotoDetailView: View {
    let photo: Photo
    let imageSize: CGFloat = 300
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                if let imageURL = URL(string: photo.url) {
                    KFImage(imageURL)
                        .resizable()
                        .scaledToFit()
                        .frame(height: imageSize)
                        .clipped()
                }
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text("Title: \(photo.title)")
                            .font(.title)
                        Spacer(minLength: 0)
                    }
                    Text("photo.id: \(photo.id)")
                        .font(.body)
                    Text("photo.albumId: \(photo.albumId)")
                        .font(.body)
                }
                .padding(16)
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct PhotoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetailView(photo: Photo.example())
    }
}
