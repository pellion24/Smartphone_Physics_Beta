//
//  VideoPlayerView.swift
//  Smartphone_Physics_Beta
//
//  Created by Ashvij Hosdurg on 2/9/26.
//

import Foundation
import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // For a local video in your app bundle (add "video.mp4" to your project)
    let player = AVPlayer(url: Bundle.main.url(forResource: "videoplayback", withExtension: "mp4")!)
    
    // For a remote video from a URL
    // let player = AVPlayer(url: URL(string: "https://example.com/yourvideo.mp4")!)

    var body: some View {
        VideoPlayer(player: player)
            .onAppear() {
                player.play() // Autoplay when the view appears
            }
            .frame(height: 300) // Set the desired frame size
            .padding()
    }
}
