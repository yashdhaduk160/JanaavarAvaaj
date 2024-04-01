//
//  Extionsion.swift
//  geeve App
//
//  Created by Dev Navadiiya on 02/03/24.
//

import Foundation
import UIKit
import StoreKit
import AVFoundation

@available(iOS 13.0, *)
func rateUs() {
    if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
        DispatchQueue.main.async {
            if #available(iOS 14.0, *) {
                SKStoreReviewController.requestReview(in: scene)
            } else {
                // Fallback on earlier versions
            }
        }
    } else {
        print(" - - - - - - Rating view in not present - - - -")
    }
}

func playSound(sound: String) {
    var player: AVAudioPlayer?

    guard let path = Bundle.main.path(forResource: sound , ofType:"mp3") else {
        return }
    let url = URL(fileURLWithPath: path)

    do {
        player = try AVAudioPlayer(contentsOf: url)
        player?.play()
        
    } catch let error {
        print(error.localizedDescription)
    }
}
