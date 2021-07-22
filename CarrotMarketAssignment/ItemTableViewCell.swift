//
//  ItemTableViewCell.swift
//  CarrotMarketAssignment
//
//  Created by simyo on 2021/07/23.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    
    @IBOutlet weak var thumnail:UIImageView!
    @IBOutlet weak var titleLabel:UILabel!
    @IBOutlet weak var whereLabel:UILabel!
    @IBOutlet weak var timeLabel:UILabel!
    @IBOutlet weak var priceLabel:UILabel!
    @IBOutlet weak var chatBtn:UIButton!
    @IBOutlet weak var heartBtn:UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
