//
//  KeyboardView.swift
//  MartinKeyboard
//
//  Created by Martin on 13/07/2022.
//

import UIKit

class KeyboardView: UIView, NibView  {
    
    @IBOutlet weak var je: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        inflateView(from: "KeyboardView", locatedAt: .main)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        inflateView(from: "KeyboardView", locatedAt: .main)
    }
    
    private func commonInit() {
        //
    }
    
    // MARK: - Observation block
    
    var onKeyTappedAction : ((_ keyword: String) -> ())?
    
    // MARK: - Action
    
    @IBAction func btn1Tapped(_ sender: UIButton) {
        onKeyTappedAction?("👻")
    }
    
    @IBAction func btn2Tapped(_ sender: UIButton) {
        onKeyTappedAction?("🐶")
    }
    
    @IBAction func btn3Tapped(_ sender: UIButton) {
        onKeyTappedAction?("👽")
    }
    
    @IBAction func btn4Tapped(_ sender: UIButton) {
        onKeyTappedAction?("🐱")
    }
    
    @IBAction func btn5Tapped(_ sender: UIButton) {
        onKeyTappedAction?("🤡")
    }
}
