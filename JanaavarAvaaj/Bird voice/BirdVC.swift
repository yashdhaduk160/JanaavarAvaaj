//
//  BirdVC.swift
//  JanaavarAvaaj
//
//  Created by Yash Dhaduk on 14/03/24.
//

import UIKit
import AVFAudio

class BirdVC: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var play_pause: UIButton!
    @IBOutlet weak var btn_back: UIButton!
    
    var imageb = UIImage()
    var nameb = String()
    var selectedSong: String?
    var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.image = imageb
        name.text = nameb
        self.btn_back.layer.cornerRadius = 15
        self.play_pause.layer.cornerRadius = self.play_pause.frame.height/2
    }
    
    
    @IBAction func btn_music(_ sender: Any) {
        
        if let songName = selectedSong, let songURL = Bundle.main.url(forResource: songName, withExtension: "mp3") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: songURL)
                audioPlayer?.play()
            } catch {
                print("Error playing song: \(error.localizedDescription)")
            }
        }
    }
    
    @IBAction func btn_back(_ sender: Any) {
        audioPlayer?.stop()
        self.navigationController?.popViewController(animated: true)

    }
    
}
