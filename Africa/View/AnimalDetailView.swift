//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Metin Atalay on 16.04.2022.
//

import SwiftUI

struct AnimalDetailView: View {
    //MARK: PROPERTIES
    
    let animal : Animal
    
    //MARK: BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                //  HERO IMAGE
                
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                //  TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical,8)
                    .foregroundColor(.primary)
                    .background(Color.accentColor.frame(height: 6).offset(y: 24))
                
                
                //  HEADLINE
                
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                //  GALLERY
                
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    InsetGalleryView(animal: animal)
                }
                
                //  FACT
                
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you Know ?")
                    
                    InsetFactView(animal: animal)
                }
                
                //  DESCRIPTION
                
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "National Parks")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                //  MAP
                
                Group {
                    HeadingView(headingImage: "map", headingText: "Location")
                    
                    InsetMapView()
                }
                .padding(.horizontal)
                
                //  LINK
                
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    ExternalWeblinkView(animal: animal)
                    
                }.padding(.horizontal)
                
            } //: VSTACK
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        }// SCROLL
    }
    
}

//MARK: PREVIEW
struct AnimalDetailView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[0])
        }
        .previewDevice("iPhone 12 Pro")
    }
}
