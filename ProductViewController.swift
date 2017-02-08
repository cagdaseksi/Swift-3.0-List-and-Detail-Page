//
//  ProductViewController.swift
//  Swift3-List-Detail-Page
//
//  Created by cagdas on 07/02/2017.
//  Copyright © 2017 cagdas. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    @IBOutlet var productImageView: UIImageView!
    @IBOutlet var productNameLabel: UILabel!
    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productNameLabel.text = product?.title
        if let imageName = product?.largeImageName {
            productImageView.image = UIImage(named: imageName)
            productImageView.frame = CGRect(x: 0,y: 50,width: self.view.frame.size.width, height: 250)
        }
    }
    
    
}
