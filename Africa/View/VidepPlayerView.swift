//
//  VidepPlayerView.swift
//  Africa
//
//  Created by Metin Atalay on 16.04.2022.
//

import SwiftUI
import AVKit

struct VidepPlayerView: View {
    //MARK: PROPERTIES
    
    var videoSelected: String
    var videoTitle: String
    
    //MARK: BODY
    var body: some View {
        VStack {
            VideoPlayer(player:playVideo(fileName: videoSelected, fileFormat: "mp4")) {
                Text(videoTitle)
            }
            .overlay(
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .padding(.top, 6)
                .padding(.horizontal, 8)
            , alignment: .topLeading
            )
        } //VS
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

//MARK: PREVIEW
struct VidepPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VidepPlayerView(videoSelected: "lion", videoTitle: "Lion")
                .previewLayout(.sizeThatFits)
            .padding()
        }
    }
}
