//
//  MoreImagesViewController.swift
//  appAlert
//
//  Created by Anton Kaznacheev on 09.10.2022.
//

import UIKit

class MoreImagesViewController: UIViewController {

    @IBOutlet private weak var imageImV: UIImageView!
    
    let images = Persons.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageImV.image = UIImage(named: images.images)
    }

}
