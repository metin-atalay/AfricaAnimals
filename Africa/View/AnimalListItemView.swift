//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Metin Atalay on 16.04.2022.
//

import SwiftUI

struct AnimalListItemView: View {
    
    //MARK: - PROPERTIES
    
    let animal : Animal
    
    //MARK: BODY
    var body: some View {
        HStack(alignment: .center , spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90, alignment: .leading)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 12)
                
            }
        }
        .listRowBackground(Color.clear)
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalListItemView(animal: animals[4])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
