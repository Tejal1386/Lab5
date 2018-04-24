//
//  AnimationManager.swift
//  MAPD724-W2018-Lesson13
//
//  Created by Mankiran kaur on 2018-04-23.
//  Copyright © 2018 Centennial College. All rights reserved.
//

import CoreGraphics
import UIKit

class AnimationManager {
    
    class var screenBounds: CGRect {
        return UIScreen.main.bounds
    }
    
    class var Top:CGPoint {
        
        //TODO: return top value
        return CGPoint(x: screenBounds.midX ,y:screenBounds.maxY)
        
    }
    
    class var Right:CGPoint {
        
        //TODO: return right value
        return CGPoint(x:10.0 ,y:10.0)
        
    }
    
    class var Bottom:CGPoint {
        
        //TODO: return botton value
        return CGPoint(x:10.0 ,y:10.0)
        
    }
    
    class var Left:CGPoint {
        
        //TODO: return left value
        return CGPoint(x:10.0 ,y:10.0)
        
    }
    
    
    
}
