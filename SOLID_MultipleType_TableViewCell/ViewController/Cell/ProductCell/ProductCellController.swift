//
//  ProductCellController.swift
//  SOLID_MultipleType_TableViewCell
//
//  Created by ZEUS on 7/5/24.
//

import UIKit

struct ProductCellController: CellHandler{
    
    let data : [Product]
    
    static func register(_ tableView: UITableView){
        tableView.register(UINib(nibName: "ProductCell", bundle: nil), forCellReuseIdentifier: "ProductCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as? ProductCell else {return UITableViewCell()}
        cell.productNameLabel.text = data[indexPath.row].name
        cell.productPriceLabel.text = data[indexPath.row].price
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Product Cell Tapped: \(indexPath.row)")
    }
    
    
}
