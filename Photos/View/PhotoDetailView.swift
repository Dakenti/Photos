//
//  PhotoDetailView.swift
//  Photos
//
//  Created by Darkhan Serkeshev on 30.08.2021.
//

import SwiftUI

struct PhotoDetailView: View {
    let photo: Photo
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
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
