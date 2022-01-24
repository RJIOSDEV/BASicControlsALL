//
//  ViewController.swift
//  BASicControls
//
//  Created by rajanOS on 07/01/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var ButtonSwitch: UIButton!
    @IBOutlet weak var textLable: UILabel!
    @IBOutlet weak var stateSwitch: UISwitch!
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var lblprogress: UILabel!
   //
    @IBOutlet weak var blurButton: UIButton!
    @IBOutlet weak var StopIndicate: UIButton!
    @IBOutlet weak var StartIndicate: UIButton!
    @IBOutlet weak var progressbtn: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var stepper: UIStepper!
  
  
    let progress = Progress(totalUnitCount: 10)
    
    override func
    viewDidLoad() {
        super.viewDidLoad()
      //  navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Advance Controll", style: .done, target: self, action: #selector(didTapRegister))
  
        stateSwitch.addTarget(self, action: #selector(stateChanged), for: .valueChanged)
        
        
        activityIndicator.style = .large
        activityIndicator.color = .red
        // Do any additional setup after loading the view.
    }
    @objc func stateChanged(switchState: UISwitch){
        if switchState.isOn {
            textLable.text = "the switch on"
        } else {
            textLable.text = "the switch is off"
        }
    }

    @IBAction func sliderChanger(_ sender: UISlider) {
   
        let currntVlaue = Int(sender.value)
        lable.text = "\(currntVlaue)"
    }
    @IBAction func StepperChanged(_ sender: UIStepper) {
        
        let currentValue = Int(sender.value)
        lable.text = "\(currentValue)"
    }
    @IBAction func startCount(_ sender: UIButton) {

        progressView.progress = 0.0
        progress.completedUnitCount = 0
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (timer) in
            guard self.progress.isFinished == false else {
                timer .invalidate()
                return
            }
            self.progress.completedUnitCount += 1
            self.progressView.setProgress(Float(self.progress.fractionCompleted), animated: true)
            self.lblprogress.text = "\(Int(self.progress.fractionCompleted * 100)) %"

        })
    }
//    @IBAction func NExtPage(_ sender: Any) {
//        let next = self.storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
//        self.present(next, animated: true, completion: nil)
//    }
    @IBAction func ButtonClicked(_ sender: Any) {
        if stateSwitch.isOn {
            textLable.text = "The switch is off"
            stateSwitch.setOn(false, animated: true)
        } else {
            textLable.text = "THe Switch is on"
            stateSwitch.setOn(true, animated: true)
        }
    }
    @IBAction func startSpinning(_ sender: Any) {
        let vc2 = self.storyboard?.instantiateViewController(identifier: "ViewController2") as! ViewController2
        // vc.objOfEvent = self.aryOfBikeList[indexPath.row]
         self.navigationController?.pushViewController(vc2, animated: true)
        
        activityIndicator.startAnimating()
    }
    @IBAction func stopSpinning(_ sender: Any) {
        activityIndicator.stopAnimating()
    }
    @IBAction func blurImage(_ sender: Any
    ) {
        let darkBlur = UIBlurEffect(style: .dark)
       let blurView = UIVisualEffectView(effect: darkBlur)
       blurView.frame = ImageView.bounds
       ImageView.addSubview(blurView)
    }
    @objc  private func didTapRegister() {
          let vc = UIViewController()
        //  vc.title = "Create Account"
          navigationController?.pushViewController(vc, animated: true)
      }
}

