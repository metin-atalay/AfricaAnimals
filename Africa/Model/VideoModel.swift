//
//  VideoModel.swift
//  Africa
//
//  Created by Metin Atalay on 16.04.2022.
//

import Foundation

struct Video: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  
  // Computed Property
  var thumbnail: String {
    "video-\(id)"
  }
}
