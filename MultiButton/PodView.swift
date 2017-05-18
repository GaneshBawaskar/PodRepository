//
//  PodView.swift
//  MultiButton
//
//  Created by  GlobalLogic on 18/05/17.
//  Copyright © 2017 Search. All rights reserved.
//

import UIKit

class PodView: UIView {
    
    var colorCounter = 0
    let colors : [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    override init(frame: CGRect) {
        super.init(frame: frame)
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in  
            UIView.animate(withDuration: 2.0) {
                self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor
                self.colorCounter+=1
            }
        }
        
        scheduledColorChanged.fire()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
