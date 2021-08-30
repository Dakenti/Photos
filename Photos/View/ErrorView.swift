//
//  ErrorView.swift
//  Photos
//
//  Created by Serkeshev Darkhan on 30.08.2021.
//

import SwiftUI

struct ErrorView: View {
    @ObservedObject var viewModel: PhotosViewModel
    
    var body: some View {
        VStack {
            Text("❌")
                .font(.system(size: 80))
            
            Text(viewModel.errorMessage ?? "")
            
            Button {
                viewModel.fetchPhotos()
            } label: {
                Text("Try again")
            }
        }
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(viewModel: PhotosViewModel())
    }
}
