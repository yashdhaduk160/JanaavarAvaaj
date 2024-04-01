//
//  BirdVoiceVC.swift
//  JanaavarAvaaj
//
//  Created by Yash Dhaduk on 13/03/24.
//

import UIKit
import AVFoundation

class BirdVoiceVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    let images = ["Parrots","Crow","Peacock","Duck","Dove","Pigeon","Penguin","Owl","Sparrow","Hen","Eagle","Kingfisher","Budgerigar","Bluebird","Woodpeckers"]
    let number = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"]
    let name = ["Parrots","Crow","Peacock","Duck","Dove","Pigeon","Penguin","Owl","Sparrow","Hen","Eagle","Kingfisher","Budgerigar","Bluebird","Woodpeckers"]

    @IBOutlet weak var collectionview: UICollectionView!
    
    @IBOutlet weak var btn_back: UIButton!
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionview.dataSource = self
        self.collectionview.delegate = self
        self.btn_back.layer.cornerRadius = 15
        // Do any additional setup after loading the view.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return name.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BirdVoiceCell", for: indexPath) as! BirdVoiceCell
        
        cell.img_birds.image = UIImage(named: images[indexPath.row])
        cell.lbl_no.text = number[indexPath.row]
        cell.lbl_name.text = name[indexPath.row]
        
        return cell
    }
    
  
        
       
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BirdVC") as! BirdVC
        
        vc.imageb = UIImage(named: images[indexPath.row])!
        vc.nameb = name[indexPath.row]
        
        let selectedSong = name[indexPath.row]
        vc.selectedSong = selectedSong

        self.navigationController?.pushViewController(vc, animated: true)
        
    }
        
    @IBAction func btn_back(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }


}

