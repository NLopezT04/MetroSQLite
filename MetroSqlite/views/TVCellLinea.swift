//
//  TVCellLinea.swift
//  MetroSqlite
//
//  Created by Nestor Lopez on 01/02/2019.
//  Copyright © 2019 Nestor Lopez. All rights reserved.
//

import UIKit

class TVCellLinea: UITableViewCell {
    @IBOutlet weak var LineaCell: UILabel!
    @IBOutlet weak var ImageCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
