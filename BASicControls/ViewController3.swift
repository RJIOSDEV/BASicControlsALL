//
//  ViewController3.swift
//  BASicControls
//
//  Created by rajanOS on 08/01/22.
//

import UIKit
import WebKit

class ViewController3: UIViewController {

 //   @IBOutlet weak var lbl: UILabel!
   // @IBOutlet weak var fund: UINavigationItem!
    @IBOutlet weak var searchbar: UISearchBar!
    @IBOutlet weak var webView: WKWebView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//let url = NSURL(string: "http://youtube.com")
//        let request = NSURLRequest( url: url! as URL)
//        webView.load(request as URLRequest)
//
       searchbar.text = "http://"
  
        
        let url = URL(string: "https://Youtube.com")!
        webView.load(URLRequest(url: url))

        // Do any additional setup after loading the view.
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
           toolbarItems = [refresh]
           navigationController?.isToolbarHidden = false
        // Do any additional setup after loading the view.
    }
    
    func searchBarSearchButtonClicked (searchbar: UISearchBar){
        searchbar.resignFirstResponder()
        let text = searchbar.text
        let url = URL(string: text!)
        let request = NSURLRequest(url: url! as URL)
        webView.load(request as URLRequest)
    }
    @IBAction func gotoNEXT(_ sender: Any) {
        let vc2 = self.storyboard?.instantiateViewController(identifier: "ViewController4") as! ViewController4
        // vc.objOfEvent = self.aryOfBikeList[indexPath.row]
         self.navigationController?.pushViewController(vc2, animated: true)
    }
    @IBAction func handlePinch(_ gesture: UIPinchGestureRecognizer) {
        guard let gestureView = gesture.view else {
          return
        }

        gestureView.transform = gestureView.transform.scaledBy(
          x: gesture.scale,
          y: gesture.scale
        )
        gesture.scale = 1
    }
    
    @IBAction func handleRotate(_ gesture: UIRotationGestureRecognizer) {
        guard let gestureView = gesture.view else {
          return
        }

        gestureView.transform = gestureView.transform.rotated(
          by: gesture.rotation
        )
        gesture.rotation = 0
    }
    
    @objc func handleTap(_ gesture: UITapGestureRecognizer) {
    }
    
    @IBAction func GotoNExt(_ sender: Any) {
    }
    
    @IBAction func hendlePan(_ gesture: UIPanGestureRecognizer) {
        
        let transletion = gesture.translation(in: view)
        guard let gestureView = gesture.view else {
            return
        }
            gestureView.center = CGPoint (
                x: gestureView.center.x + transletion.x,
                y: gestureView.center.y + transletion.y
            
            )
        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else {
          return
        }

        // 1
        let velocity = gesture.velocity(in: view)
        let magnitude = sqrt((velocity.x * velocity.x) + (velocity.y * velocity.y))
        let slideMultiplier = magnitude / 200

        // 2
        let slideFactor = 0.1 * slideMultiplier
        // 3
        var finalPoint = CGPoint(
          x: gestureView.center.x + (velocity.x * slideFactor),
          y: gestureView.center.y + (velocity.y * slideFactor)
        )

        // 4
        finalPoint.x = min(max(finalPoint.x, 0), view.bounds.width)
        finalPoint.y = min(max(finalPoint.y, 0), view.bounds.height)

        // 5
        UIView.animate(
          withDuration: Double(slideFactor * 2),
          delay: 0,
          // 6
          options: .curveEaseOut,
          animations: {
            gestureView.center = finalPoint
        })
        
    }
}
