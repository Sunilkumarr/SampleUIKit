//
//  CustomCell.swift
//  SampleUIKit
//
//  Created by Sunil K on 08/08/22.
//

import Foundation
import UIKit

class CustomCell:UITableViewCell {
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var itemName: UILabel!
    
    @IBOutlet weak var itemDetail: UILabel!
    
}
