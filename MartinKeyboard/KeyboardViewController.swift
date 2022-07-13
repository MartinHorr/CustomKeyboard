//
//  KeyboardViewController.swift
//  MartinKeyboard
//
//  Created by Martin on 13/07/2022.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    override func updateViewConstraints() {
        super.updateViewConstraints()
        // Add custom view sizing constraints here
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        let keyboardView = KeyboardView()
        keyboardView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(keyboardView)
        NSLayoutConstraint.activate([
            keyboardView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            keyboardView.topAnchor.constraint(equalTo: view.topAnchor),
            keyboardView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            keyboardView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
        keyboardView.onKeyTappedAction = { [weak self] (keyword) in
            guard let self = self else { return }
            self.textDocumentProxy.insertText(keyword)
        }
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
    
    // The app is about to change the document's contents. Perform any preparation here.
    override func textWillChange(_ textInput: UITextInput?) { }
    override func textDidChange(_ textInput: UITextInput?) { }
}
