//
//  GalleryViewController.swift
//  Ryan's Trip
//
//  Created by Ryan Yang on 10/24/16.
//  Copyright © 2016 F4. All rights reserved.
//

import UIKit


class GalleryViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIToolbarDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Get New Photo!"
       
               
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func tapButton(_ sender: UIBarButtonItem) {
        let picker = UIImagePickerController()
        picker.delegate = self
        present(picker, animated: true, completion: nil)
        
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageView.image = image
            
        }
        dismiss(animated: true, completion: nil)
    }
    
}
