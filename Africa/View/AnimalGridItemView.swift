//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Metin Atalay on 16.04.2022.
//

import SwiftUI

struct AnimalGridItemView: View {
    //MARK: PROP
    let animal: Animal
    
    //MARK: BODY
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

//MARK: Previews
struct AnimalGridItemView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalGridItemView(animal: animals[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
