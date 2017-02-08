//
//  ProductsTableViewController.swift
//  Swift3-List-Detail-Page
//
//  Created by cagdas on 07/02/2017.
//  Copyright © 2017 cagdas. All rights reserved.
//

import Foundation

class Product {
    var title: String?
    var smallImageName: String?
    var largeImageName: String?
    
    init(title: String, smallImageName: String, largeImageName: String) {
        self.title = title
        self.smallImageName = smallImageName
        self.largeImageName = largeImageName
    }
}
