//
//  ContentView.swift
//  Photos
//
//  Created by Serkeshev Darkhan on 30.08.2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = PhotoViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.photos) { photo in
                Text(photo.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
