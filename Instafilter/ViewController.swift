//
//  ViewController.swift
//  Instafilter
//
//  Created by Артур Азаров on 05.08.2018.
//  Copyright © 2018 Артур Азаров. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var intensity: UISlider!
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // MARK: - Actions
    
    @IBAction func changeFilter(_ sender: Any) {
    }
    
    // MARK: -
    
    @IBAction func save(_ sender: Any) {
    }
    
    // MARK: -
    
    @IBAction func intensityChanged(_ sender: Any) {
    }
}

