//
//  VideoListView.swift
//  Africa
//
//  Created by Metin Atalay on 16.04.2022.
//

import SwiftUI

struct VideolListView: View {
    
    //MARK: PROP
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    let hapticImpact  = UIImpactFeedbackGenerator(style: .medium)
    
    //MARK: BODY
    var body: some View {
        
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: VidepPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                        VideoListItemView(video: item)
                            .padding(.vertical, 8)
                    }
                }
            } //List
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar(){
                ToolbarItem(placement: .navigationBarTrailing){
                    Button (action: {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        }// NB
    }
}

struct VideolListView_Previews: PreviewProvider {
    static var previews: some View {
        VideolListView()
            .previewLayout(.sizeThatFits)
    }
}
