
import UIKit

class EndViewController: UIViewController {
    
    
    @IBOutlet weak var endLabel: UILabel!
    
    @IBOutlet weak var backButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        AnimateEndScreenLabel()
        ButtonMoveLeft()
       
    }
    
    
    @IBAction func BackButton(_ sender: UIButton) {
         performSegue(withIdentifier: SegueManager.SecondView, sender: sender)
    }
    
   func  ButtonMoveLeft(){
    UIView.animate(withDuration: 2, delay: 0.25, options: [.curveEaseIn], animations: {
    self.backButton.center.x -= 125
    }, completion: nil)
}
    func AnimateEndScreenLabel() {
                UIView.animateKeyframes(withDuration: 4, delay: 0,
                                            options: [.repeat, .autoreverse], animations: {
            
                        UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25, animations: {
                            self.endLabel.center.y -= 200
                            
            
                       })
            
                        UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25, animations: {
                                //self.endLabel.center.y += 50
                        })
            
                        UIView.addKeyframe(withRelativeStartTime: 0.50, relativeDuration: 0.25, animations: {
                            self.endLabel.center.y += 200
                        })
            
                        UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25, animations: {
                           // self.endLabel.center.y -= 250
                        })
            
            
                    }, completion: nil)
            }
    
    
    
}

