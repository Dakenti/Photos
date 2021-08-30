//
//  ContentView.swift
//  Photos
//
//  Created by Serkeshev Darkhan on 30.08.2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = PhotosViewModel()
    
    var body: some View {
        if viewModel.isLoading {
            LoadingView()
        } else if viewModel.errorMessage != nil {
            ErrorView(viewModel: viewModel)
        } else {
            PhotosListView(photos: viewModel.photos)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
