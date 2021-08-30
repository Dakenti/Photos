//
//  PhotosListView.swift
//  Photos
//
//  Created by Serkeshev Darkhan on 30.08.2021.
//

import SwiftUI

struct PhotosListView: View {
    public var photos: [Photo]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(photos) { photo in
                    NavigationLink(
                        destination: PhotoDetailView(photo: photo))
                    {
                        PhotoRow(photo: photo)
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Photos")
        }
    }
}

struct PhotosListView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosListView(photos: [])
    }
}
