//
//  LoadingView.swift
//  Photos
//
//  Created by Serkeshev Darkhan on 30.08.2021.
//

import SwiftUI

struct LoadingView: View {
    
    var body: some View {
        VStack(spacing: 16)  {
            ProgressView()
            Text("Loading...")
                .foregroundColor(.gray)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
