
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
        backbutton()
       
    }
    
    
    @IBAction func BackButton(_ sender: UIButton) {
         performSegue(withIdentifier: SegueManager.SecondView, sender: sender)
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
    
    func backbutton(){
        backButton.transform = backButton.transform.scaledBy(x: 0.001, y: 0.001)
        
        UIView.animate(withDuration: 0.5, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.3, options: .curveEaseInOut, animations: {
            self.backButton.transform = CGAffineTransform.identity.scaledBy(x: 1.5, y: 1.5)
        }, completion: nil)
        // for zoom out
        UIView.animate(withDuration: 0.5, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.3, options: .curveEaseInOut, animations: {
            self.backButton.transform = CGAffineTransform.identity.scaledBy(x: 1.0, y: 1.0)
        }, completion: nil)
    }
    
}

