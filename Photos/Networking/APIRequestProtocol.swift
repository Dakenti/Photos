//
//  ContentView.swift
//  Photos
//
//  Created by Serkeshev Darkhan on 30.08.2021.
//

import Foundation

protocol APIRequestProtocol {
    func fetch<T: Decodable>(_ type: T.Type, url: URL?, completion: @escaping(Result<T, APIError>) -> Void)
}
