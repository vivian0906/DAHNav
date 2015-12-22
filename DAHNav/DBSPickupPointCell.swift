//
//  DBSPickupPointCell.swift
//  DAHNav
//
//  Created by shou wei on 16/12/15.
//  Copyright © 2015 shou wei. All rights reserved.
//

import UIKit

enum DBSShuttleBusPickPointType:Int{
    case JurongEast = 0
    case TanahMerah
    case ToaPayoh
    case Hougang
    case CityHall
}


class DBSPickupPointCell: UITableViewCell {


    @IBOutlet weak var contentImageView: UIImageView!
    
    //@IBOutlet weak var qrImage: UIImageView!
    
    @IBOutlet weak var addressLable: UILabel!
    func bindData(type: DBSShuttleBusPickPointType)
    {
        switch(type)
        {
        case .JurongEast:
            contentImageView.image = UIImage(named: "JurongEast")
            addressLable.text = "Jurong East MRT – Venture Ave (Bus Stop 2)"
            break
            
        case .CityHall:
            contentImageView.image = UIImage(named: "CityHall")
            addressLable.text = "City Hall MRT Station – Along Coleman Street , Outside UOB Bank (Adelphi)"
            
            break
            
        case .Hougang:
            contentImageView.image = UIImage(named: "HouGang")
            addressLable.text = "Hougang MRT Station – Before Taxi Stand Entry (EXIT B from MRT Station)"
            break
            
        case .ToaPayoh:
            contentImageView.image = UIImage(named: "ToaPayoh")
            addressLable.text = "Toa Payoh MRT – Toa Payoh Lor 2, Outside Block 175"
            break
            
        case .TanahMerah://TanahMerah
            contentImageView.image = UIImage(named: "TanahMerah")
            addressLable.text = "Tanah Merah MRT – Outside MRT Station Exit A"
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
