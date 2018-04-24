
/*
 Date: 4/23/2018
 FileName: SecondViewController.swift
 Auther's Name: Tejal Patel,Amandeep Sekhon, Mankiran Kaur
 Student ID: 300972812, 300976886, 300990016
 */
import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var secondScreen: UILabel!
    
    @IBOutlet var secondView: UIView!
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        AnimateLableIn()
        AnimateSecondScreenLabel()
    AnimateButtonIn()
    }
    
    func AnimateLableIn(){
        UIView.animate(withDuration: 1, delay: 0.25, options: [.curveEaseInOut], animations:{        self.secondScreen.alpha = 1
            self.secondScreen.center.y -= 150
        }, completion: nil )
        
    }
    
    func AnimateSecondScreenLabel() {
        UIView.animateKeyframes(withDuration: 4, delay: 0.0,
                                options: [.repeat, .autoreverse], animations: {
                                    
                                    UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25, animations: {
                                         self.secondScreen.alpha = 0
                                        
                                        
                                    })
                                    
                                    UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25, animations: {
                                         self.secondScreen.alpha = 1
                                    })
                                    
                                    
                                   
                                    
                                    UIView.addKeyframe(withRelativeStartTime: 0.50, relativeDuration: 0.25, animations: {
                                      self.secondScreen.alpha = 0
                                    })
                                    
                                    UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25, animations: {
                                       self.secondScreen.alpha = 1
                                    })
                                    
                                    
        }, completion: nil)
    }
    
    
    func AnimateButtonIn()  {
        UIView.transition(with: self.nextButton, duration: 2, options: [.transitionFlipFromTop], animations: {
           self.nextButton.center.x -= 200
        }, completion: nil)
        UIView.transition(with: self.backButton, duration: 2, options: [.transitionFlipFromTop], animations: {
            self.backButton.center.x += 200
        }, completion: nil)
    }
    
    @IBAction func BackButton(_ sender: UIButton) {
        performSegue(withIdentifier: SegueManager.StartView, sender: sender)
    }
    
    @IBAction func NextButton(_ sender: UIButton) {
        performSegue(withIdentifier: SegueManager.EndView, sender: sender)
    }
    
}
