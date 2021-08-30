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
                    Text(photo.title)
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Photos")
        }
    }
}

struct PhotosView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosListView(photos: [])
    }
}
