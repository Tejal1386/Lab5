
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        // secondScreen.center.x  -= view.bounds.width
    }
    
    override func viewDidAppear(_ animated: Bool) {
      
        AnimateSecondScreenLabel()
    
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
    
    
    @IBAction func BackButton(_ sender: UIButton) {
        performSegue(withIdentifier: SegueManager.StartView, sender: sender)
    }
    
    @IBAction func NextButton(_ sender: UIButton) {
        performSegue(withIdentifier: SegueManager.EndView, sender: sender)
    }
    
}
