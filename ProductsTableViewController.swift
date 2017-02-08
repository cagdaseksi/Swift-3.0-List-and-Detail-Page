//
//  ProductsTableViewController.swift
//  Swift3-List-Detail-Page
//
//  Created by cagdas on 07/02/2017.
//  Copyright © 2017 cagdas. All rights reserved.
//

import UIKit

import Foundation

class ProductsTableViewController: UITableViewController {
var products: [Product]?
    override func viewDidLoad() {
        super.viewDidLoad()

        products = [Product(title: "Apple", smallImageName: "apple-small", largeImageName: "apple-large"),
                    Product(title: "Apricot", smallImageName: "apricot-small", largeImageName: "apricot-large"),
                    Product(title: "Banana", smallImageName: "banana-small", largeImageName: "banana-large"),
                    Product(title: "Blueberry", smallImageName: "blueberry-small", largeImageName: "blueberry-large"),
                    Product(title: "Cantaloupe", smallImageName: "cantaloupe-small", largeImageName: "cantaloupe-large")]
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let products = products {
            return products.count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifer = "productCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifer, for: indexPath)
        
        cell.textLabel?.text = products?[(indexPath as NSIndexPath).row].title
        
        if let imageName = products?[(indexPath as NSIndexPath).row].smallImageName {
            cell.imageView?.image = UIImage(named: imageName)
        }
        
        return cell;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showProduct" {
            let productVC = segue.destination as? ProductViewController
            
            if let cell = sender as? UITableViewCell {
                if let indexPath = tableView.indexPath(for: cell) {
                    productVC?.product = products?[(indexPath as NSIndexPath).row]
                }
            }
        }
        
    }

}
