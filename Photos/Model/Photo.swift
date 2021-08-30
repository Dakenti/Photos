//
//  ContentView.swift
//  Photos
//
//  Created by Serkeshev Darkhan on 30.08.2021.
//

import Foundation

struct Photo: Decodable, Identifiable {
    let albumId: Int
    let id: Int
    let title: String
    let url: String
    let thumbnailUrl: String
}


