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

    var vGallery: VMTGalleryView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        customUI()
        initGalleryView()

    }

    private func customUI() {
        imgShowImageDemo.layer.borderColor = UIColor.gray.cgColor
        imgShowImageDemo.layer.borderWidth = 2
        imgShowImageDemo.layer.cornerRadius = 10
        imgShowImageDemo.layer.masksToBounds = true
    }

    func initGalleryView() {
        let r = CGRect(x: 0, y: 0, width: vAllImageBase.frame.size.width, height: vAllImageBase.frame.size.height)
        vGallery = VMTGalleryView(frame: r)
        vGallery?.backgroundColor = UIColor.white
        vGallery?.delegate = self
        vAllImageBase.addSubview(vGallery!)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let r = CGRect(x: 0, y: 0, width: vAllImageBase.frame.size.width, height: vAllImageBase.frame.size.height)
        vGallery?.setFrame(frame: r)
    }

    // Did select image
    func didSelectImage(image: UIImage) {
        imgShowImageDemo.image = image
    }
    // Select multi image
    func didSelectMultiImage(arrImages: [UIImage]) {
        print(arrImages.count)
    }

}

