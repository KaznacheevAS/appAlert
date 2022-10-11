//
//  AboutsViewController.swift
//  appAlert
//
//  Created by Anton Kaznacheev on 09.10.2022.
//

import UIKit

class AboutsViewController: UIViewController {

    @IBOutlet private weak var textTView: UITextView!
    @IBOutlet private weak var nextButton: UIButton!
    
    var abouts: Users!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "\(abouts.person.name) \(abouts.person.ferstName)"
        textTView.text = abouts.person.text
        nextButton.setTitle("Foto", for: .normal)
    }
    
}
