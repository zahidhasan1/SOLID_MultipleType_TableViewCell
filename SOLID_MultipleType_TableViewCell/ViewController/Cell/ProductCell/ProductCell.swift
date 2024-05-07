//
//  ProductCell.swift
//  SOLID_MultipleType_TableViewCell
//
//  Created by ZEUS on 6/5/24.
//

import UIKit

class ProductCell: UITableViewCell {

    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func config(name: String, description: String){
        
    }
    
}
