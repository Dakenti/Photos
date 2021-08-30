//
//  ContentView.swift
//  Photos
//
//  Created by Serkeshev Darkhan on 30.08.2021.
//

import Foundation

class PhotoViewModel: ObservableObject {
    
    @Published var photos = [Photo]()
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    
    let service: APIRequestProtocol
    
    init(service: APIRequestProtocol = APIRequest()) {
        self.service = service
        fetchPhotos()
    }
    
    func fetchPhotos() {
        
        isLoading = true
        errorMessage = nil
        
        let url = URL(string: "https://jsonplaceholder.typicode.com/photos")
        service.fetch([Photo].self, url: url) { [unowned self] result in
            DispatchQueue.main.async {
                self.isLoading = false
                switch result {
                case .failure(let error):
                    self.errorMessage = error.localizedDescription
                    // print(error.description)
                    print(error)
                case .success(let photos):
                    print("--- sucess with \(photos.count)")
                    self.photos = photos
                }
            }
        }
    }
}
