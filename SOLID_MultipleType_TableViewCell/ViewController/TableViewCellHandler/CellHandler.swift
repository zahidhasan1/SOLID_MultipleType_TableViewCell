//
//  CellHandler.swift
//  SOLID_MultipleType_TableViewCell
//
//  Created by ZEUS on 6/5/24.
//

import UIKit

protocol CellHandler{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
}
