//
//  DBSBusContentCell.swift
//  DAHNav
//
//  Created by shou wei on 21/12/15.
//  Copyright © 2015 shou wei. All rights reserved.
//

import UIKit

enum DBSBusType:Int{
    case InterBus = 0
    case ChangiBus
    case EightriumBus
    case DAHBus
}

class DBSBusContentCell: UITableViewCell {

    @IBOutlet weak var contentImageView: UIImageView!
    
    
    func bindData(type: DBSBusType)
    {
        switch(type)
        {
        case .InterBus:
            contentImageView.image = UIImage(named: "InterBus")
            break
        case .ChangiBus:
            contentImageView.image = UIImage(named: "ChangiBus")
            break
        case .DAHBus:
            contentImageView.image = UIImage(named: "DAHBus")
            break
        case .EightriumBus:
            contentImageView.image = UIImage(named: "EightriumBus")
            break
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = UITableViewCellSelectionStyle.None
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}