//
//  ViewController.swift
//  SOLID_MultipleType_TableViewCell
//
//  Created by ZEUS on 6/5/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var cellControllers: [CellHandler] = []
    var sections: [SectionType] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sections.append(.product(generateFakeProduct()))
        sections.append(.ad(generateFakeAds()))
        setUpTableview(sections: sections)
        
    }
    
    
    func generateFakeProduct() -> [Product]{
        return [
            Product(name: "MacbookPro", price: "1750.89$"),
            Product(name: "iPhone-13 Pro Max", price: "1350.99$"),
            Product(name: "Burberry", price: "899.99$")
        ]
    }
    
    func generateFakeAds() -> [Ad]{
        return [
        Ad(companyName: "CocaCola", productName: "Sprite", productPrice: "10$"),
        Ad(companyName: "Bashundhara", productName: "Soybean Oil", productPrice: "$7.00"),
        Ad(companyName: "Pran", productName: "Buiscuits", productPrice: "$2.03")
        ]
    }
    
    
    func setUpTableview(sections: [SectionType]){
        sections.forEach { sectionType in
            switch sectionType {
            case .product(let data):
                ProductCellController.register(tableView)
                cellControllers.append(ProductCellController(data: data))
                
            case .ad(let data):
                AdCellController.register(tableView)
                cellControllers.append(AdCellController(data: data))
            }
        }
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellControllers[section].tableView(tableView, numberOfRowsInSection: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return cellControllers[indexPath.section].tableView(tableView, cellForRowAt: indexPath)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        cellControllers[indexPath.section].tableView(tableView, didSelectRowAt: indexPath)
    }
}

