//
//  QuestionView.swift
//  OpenQuizz 2
//
//  Created by Benoit Lary on 24/08/2021.
//

import UIKit

class QuestionView: UIView {

    @IBOutlet private var label: UILabel!
    @IBOutlet private var icon: UIImageView!
    
    enum Style {
        case correct, incorrect, standard
    }
    
    var style : Style = .standard {
        didSet {
            setStyle(style)
        }
    }
    
    private func setStyle (_ style: Style) {
        switch style {
        case .correct:
//            backgroundColor = UIColor(red: 200/255.0, green: 236/255.0, blue: 160/255.0, alpha: 1)
            backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            icon.image = UIImage(named: "Icon Correct")
            icon.isHidden = false
        case .incorrect:
            backgroundColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
//            backgroundColor = colorLiteral
            icon.image = #imageLiteral(resourceName: "Icon Error")
//            icon.image = imageLiteral
            icon.isHidden = false
        case .standard:
            backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            icon.isHidden = true
        }
        
    }
    var title = "" {
        didSet {
            label.text = title
        }
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
