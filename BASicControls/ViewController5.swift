//
//  ViewController5.swift
//  BASicControls
//
//  Created by rajanOS on 11/01/22.
//

import UIKit
import AVKit
import AVFoundation


class ViewController5: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "video", ofType: "MOV")!))
   
//    let layer = AVPlayerLayer(player: player)
//        layer.frame = view.bounds
//        layer.videoGravity = .resizeAspectFill
//        view.layer.addSublayer(layer)
//        player.volume = 0
//
//
//        player.play()
        
    let vc = AVPlayerViewController()
        vc.player = player
        present(vc, animated: true)
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
