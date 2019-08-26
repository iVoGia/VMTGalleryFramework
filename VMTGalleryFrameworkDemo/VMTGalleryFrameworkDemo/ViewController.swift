//
//  ViewController.swift
//  VMTGalleryFrameworkDemo
//
//  Created by Trinh Vo Mai on 8/26/19.
//  Copyright © 2019 Trinh Vo Mai. All rights reserved.
//

import UIKit
import VMTGalleryFramework

class ViewController: UIViewController, VMTGalleryViewDelegate {

    @IBOutlet weak var imgShowImageDemo: UIImageView!
    @IBOutlet weak var vAllImageBase: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        initGalleryView()

    }

    func initGalleryView() {
        let r = CGRect(x: 0, y: 0, width: vAllImageBase.frame.size.width, height: vAllImageBase.frame.size.height)
        let vGallery = VMTGalleryView(frame: r)
        vGallery.backgroundColor = UIColor.white
        vGallery.delegate = self
        vAllImageBase.addSubview(vGallery)
    }

    // Did select image
    func didSelectImage(image: UIImage) {
        imgShowImageDemo.image = image
    }


}

