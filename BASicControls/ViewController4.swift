//
//  ViewController4.swift
//  BASicControls
//
//  Created by rajanOS on 09/01/22.
//

import UIKit
import WebKit
import MapKit


class ViewController4: UIViewController //,WKNavigationDelegate
{
   // var webView: WKWebView!
    @IBOutlet weak var nttce: UIButton!
    @IBOutlet weak var MapViwe: MKMapView!
    
  //  override func loadView() {
       // webView = WKWebView()
      //  webView.navigationDelegate = self
      //  view = webView
    
//    var dynamicAnimator   : UIDynamicAnimator!
//    var gravityBehavior   : UIGravityBehavior!

  
    
//    var dynamicAnimator   : UIDynamicAnimator!
//    var gravityBehavior   : UIGravityBehavior!
//    var collisionBehavior : UICollisionBehavior!

    
//
//    var dynamicAnimator   : UIDynamicAnimator!
//    var gravityBehavior   : UIGravityBehavior!
//    var collisionBehavior : UICollisionBehavior!
//    var bouncingBehavior  : UIDynamicItemBehavior!

   
    override func viewDidLoad() {
        super.viewDidLoad()
   
//        dynamicAnimator = UIDynamicAnimator(referenceView: self.view) //1
//
//        gravityBehavior = UIGravityBehavior(items: [nttce]) //2
//        dynamicAnimator.addBehavior(gravityBehavior) //3
//
//        collisionBehavior = UICollisionBehavior(items: [nttce]) //4
//        collisionBehavior.translatesReferenceBoundsIntoBoundary = true //5
//        dynamicAnimator.addBehavior(collisionBehavior) //6
//
//        //Adding the bounce effect
//        bouncingBehavior = UIDynamicItemBehavior(items: [nttce]) //7
//        bouncingBehavior.elasticity = 0.75 //8
//        dynamicAnimator.addBehavior(bouncingBehavior) //9
//        
        
        
        
        
        
        
        
        
        
//        dynamicAnimator = UIDynamicAnimator(referenceView: self.view) //1
//
//        gravityBehavior = UIGravityBehavior(items: [nttce]) //2
//        dynamicAnimator.addBehavior(gravityBehavior) //3
//
//        collisionBehavior = UICollisionBehavior(items: [nttce]) //4
//        collisionBehavior.translatesReferenceBoundsIntoBoundary = true //5
//        dynamicAnimator.addBehavior(collisionBehavior) //6
//
//
//
        
        
//
//        dynamicAnimator = UIDynamicAnimator(referenceView: self.view) //1
//
//        gravityBehavior = UIGravityBehavior(items: [nttce]) //2
//        dynamicAnimator.addBehavior(gravityBehavior) //3
//
//
        
        
        
//
//        let oldValue = nttce.frame.width/2
//        let newButtonWidth: CGFloat = 60
//
//        /* Do Animations */
//        CATransaction.begin() //1
//        CATransaction.setAnimationDuration(2.0) //2
//        CATransaction.setAnimationTimingFunction(CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)) //3
//
//        // View animations //4
//        UIView.animate(withDuration: 1.0) {
//            self.nttce.frame = CGRect(x: 0, y: 0, width: newButtonWidth, height: newButtonWidth)
//            self.nttce.center = self.view.center
//        }
//
//        // Layer animations
//        let cornerAnimation = CABasicAnimation(keyPath: #keyPath(CALayer.cornerRadius)) //5
//        cornerAnimation.fromValue = oldValue //6
//        cornerAnimation.toValue = newButtonWidth/2 //7
//
//        nttce.layer.cornerRadius = newButtonWidth/2 //8
//        nttce.layer.add(cornerAnimation, forKey: #keyPath(CALayer.cornerRadius)) //9
//
//        CATransaction.commit() //10
//
        
        
        
        
        
        
        
        
        
        
        
        
        
//        UIView.animateKeyframes(withDuration: 5, //1
//          delay: 0, //2
//          options: .calculationModeLinear, //3
//          animations: { //4
//            UIView.addKeyframe( //5
//              withRelativeStartTime: 0.25, //6
//              relativeDuration: 0.25) { //7
//                self.nttce.center = CGPoint(x: self.view.bounds.midX, y: self.view.bounds.maxY) //8
//            }
//
//            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25) {
//                self.nttce.center = CGPoint(x: self.view.bounds.width, y: start.y)
//            }
//
//            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25) {
//                self.nttce.center = start
//            }
//        })
//
////
//        let newButtonWidth: CGFloat = 60
//        let animator = UIViewPropertyAnimator(duration:0.3, curve: .linear) { //1
//            self.nttce.frame = CGRect(x: 0, y: 0, width: newButtonWidth, height: newButtonWidth)
//            self.nttce.center = self.view.center
//        }
//        animator.startAnimation() //2
        
        
      
        
        
        
        
        
        
        
        
        
       
//        let newButtonWidth: CGFloat = 60
//        UIView.animate(withDuration: 1.0, //1
//            delay: 0.0, //2
//            usingSpringWithDamping: 0.3, //3
//            initialSpringVelocity: 1, //4
//            options: UIView.AnimationOptions.curveEaseInOut, //5
//            animations: ({ //6
//                self.nttce.frame = CGRect(x: 0, y: 0, width: newButtonWidth, height: newButtonWidth)
//                self.nttce.center = self.view.center
//        }), completion: nil)
//
        
        
        
        
        
        
        
//
//        let newButtonWidth: CGFloat = 0
//
//        UIView.animate(withDuration: 2.0) { //1
//            self.nttce.frame = CGRect(x: 0, y: 0, width: newButtonWidth, height: newButtonWidth) //2
//            self.nttce.center = self.view.center //3
//        }
//        let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
//        MapViwe.centerToLocation(initialLocation)
//
//        let oahuCenter = CLLocation(latitude: 21.4765, longitude: -157.9647)
//          let region = MKCoordinateRegion(
//            center: oahuCenter.coordinate,
//            latitudinalMeters: 50000,
//            longitudinalMeters: 60000)
//          MapViwe.setCameraBoundary(
//            MKMapView.CameraBoundary(coordinateRegion: region),
//            animated: true)
//
//          let zoomRange = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 200000)
//          MapViwe.setCameraZoomRange(zoomRange, animated: true)
       
        
//        let artwork = Artwork(
//          title: "King David Kalakaua",
//          locationName: "Waikiki Gateway Park",
//          discipline: "Sculpture",
//          coordinate: CLLocationCoordinate2D(latitude: 21.283921, longitude: -157.831661))
//        MapViwe.addAnnotation(artwork)
    }
    @IBAction func NXTPAGE(_ sender: Any) {
        let vc2 = self.storyboard?.instantiateViewController(identifier: "ViewController5") as! ViewController5
        // vc.objOfEvent = self.aryOfBikeList[indexPath.row]
         self.navigationController?.pushViewController(vc2, animated: true)
    }
    

}
      //  let url = URL(string: "https://Youtube.com")!
      //   webView.load(URLRequest(url: url))

        // Do any additional setup after loading the view.
//        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
//           toolbarItems = [refresh]
//           navigationController?.isToolbarHidden = false
//
//    }
//    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
//        title = webView.title
//        }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

private extension MKMapView {
  func centerToLocation(
    _ location: CLLocation,
    regionRadius: CLLocationDistance = 1000
  ) {
    let coordinateRegion = MKCoordinateRegion(
      center: location.coordinate,
      latitudinalMeters: regionRadius,
      longitudinalMeters: regionRadius)
    setRegion(coordinateRegion, animated: true)
  }
}
//extension ViewController: MKMapViewDelegate {
//  // 1
//  func mapView(
//    _ mapView: MKMapView,
//    viewFor annotation: MKAnnotation
//  ) -> MKAnnotationView? {
//    // 2
//    guard let annotation = annotation as? Artwork else {
//      return nil
//    }
//    // 3
//    let identifier = "artwork"
//    var view: MKMarkerAnnotationView
//    // 4
//    if let dequeuedView = mapView.dequeueReusableAnnotationView(
//      withIdentifier: identifier) as? MKMarkerAnnotationView {
//      dequeuedView.annotation = annotation
//      view = dequeuedView
//    } else {
//      // 5
//      view = MKMarkerAnnotationView(
//        annotation: annotation,
//        reuseIdentifier: identifier)
//      view.canShowCallout = true
//      view.calloutOffset = CGPoint(x: -5, y: 5)
//      view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
//    }
//    return view
//  }
//}
