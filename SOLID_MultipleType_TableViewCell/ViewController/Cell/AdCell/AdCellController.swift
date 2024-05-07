//
//  AdCellController.swift
//  SOLID_MultipleType_TableViewCell
//
//  Created by ZEUS on 7/5/24.
//

import UIKit

struct AdCellController: CellHandler{
    let data: [Ad]
    
    static func register(_ tableView: UITableView){
        tableView.register(UINib(nibName: "AdCell", bundle: nil), forCellReuseIdentifier: "AdCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AdCell", for: indexPath) as? AdCell else {return UITableViewCell()}
        cell.companyNameLabel.text = data[indexPath.row].companyName
        cell.productNameLabel.text = data[indexPath.row].productName
        cell.productPriceLabel.text = data[indexPath.row].productPrice
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Ad cell tapped")
    }
    
    
}
