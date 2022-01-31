//
//  Factories.swift
//  SpotifyPlaybackProject
//
//  Created by Rafael Oliveira on 31/01/22.
//

import Foundation
import UIKit


// main label 17
func makeMainLabel(text: String) -> UILabel {
    let label = UILabel()
    
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = text
    label.textColor = .white
    label.font = UIFont.systemFont(ofSize: 17)
    
    return label
}


// sub label 13
func makeSubLabel(text: String) -> UILabel{
    let label = UILabel()
    
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = text
    label.textColor = .gray
    label.font = UIFont.systemFont(ofSize: 13)
    label.numberOfLines = 0
    
    return label
}

// Bold label
func makeBoldLabel(text: String) -> UILabel{
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = text
    label.textColor = .white
    label.font = UIFont.boldSystemFont(ofSize: 17)
    
    return label
}

func makeSwitch() -> UISwitch{
    let switchButton = UISwitch()
    
    switchButton.translatesAutoresizingMaskIntoConstraints = false
    switchButton.isOn = false
    
    return switchButton
    
}

func makeProgressionView() -> UIProgressView {
    let progressionView = UIProgressView(progressViewStyle: .default)
    
    progressionView.translatesAutoresizingMaskIntoConstraints = false
    progressionView.tintColor = .blue
    
    return progressionView
}

func makeStackView(withOrientation axis: NSLayoutConstraint.Axis) -> UIStackView {
    let stackView = UIStackView()
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.axis = axis
    stackView.distribution = .fill
    stackView.alignment = .fill
    stackView.spacing = 8.0

    return stackView
}

public extension NSLayoutConstraint {
    @objc func setActiveBreakable(priority: UILayoutPriority = UILayoutPriority(900)) {
        self.priority = priority
        isActive = true
    }
}

extension UINavigationController {
    override open var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

extension UIColor {
    static let darkBlue = UIColor(red: 10/255, green: 132/255, blue: 255/255, alpha: 1)
    static let darkGreen = UIColor(red: 48/255, green: 209/255, blue: 88/255, alpha: 1)
    static let darkOrange = UIColor(red: 255/255, green: 149/255, blue: 0/255, alpha: 1)
    static let darkRed = UIColor(red: 255/255, green: 59/255, blue: 48/255, alpha: 1)
    static let darkTeal = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 1)
    static let darkYellow = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
    static let offBlack = UIColor(red: 25/255, green: 25/255, blue: 25/255, alpha: 1)
}
