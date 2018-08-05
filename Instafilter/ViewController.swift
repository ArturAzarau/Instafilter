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
    
    // MARK: - Properties
    
    private var currentImage: UIImage!
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Adding bar button
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(importPicture))
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
    
    // MARK: - Methods
    
    @objc private func importPicture() {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.allowsEditing = true
        present(picker, animated: true)
    }
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        guard let image = info[UIImagePickerControllerEditedImage] as? UIImage else { return }
        dismiss(animated: true)
        currentImage = image
    }
}

