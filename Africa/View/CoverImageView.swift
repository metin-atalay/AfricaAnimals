//
//  CoverImageView.swift
//  Africa
//
//  Created by Metin Atalay on 16.04.2022.
//

import SwiftUI

struct CoverImageView: View {
    
    // MARK: - PROPERTIES
    
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    // MARK: - BODY
    var body: some View {
        
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            } //LOOP
        } // TABLE
        .tabViewStyle(PageTabViewStyle())
        
     
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView().previewLayout(.fixed(width: 400, height: 300))
    }
}
