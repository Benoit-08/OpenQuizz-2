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
            backgroundColor = UIColor(red: 200/255.0, green: 236/255.0, blue: 160/255.0, alpha: 1)
            icon.image = UIImage(named: "Icon Correct")
            icon.isHidden = false
        case .incorrect:
            backgroundColor = #colorLiteral(red: 0.953055799, green: 0.5271533728, blue: 0.5785601735, alpha: 1)
//            backgroundColor = colorLiteral
            icon.image = #imageLiteral(resourceName: "Icon Error")
//            icon.image = imageLiteral
            icon.isHidden = false
        case .standard:
            backgroundColor = #colorLiteral(red: 0.7496449351, green: 0.7689861059, blue: 0.7860563397, alpha: 1)
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
