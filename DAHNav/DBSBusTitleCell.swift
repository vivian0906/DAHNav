//
//  ShutterBusInterCell.swift
//  DAHNav
//
//  Created by shou wei on 11/12/15.
//  Copyright © 2015 shou wei. All rights reserved.
//

import UIKit

class DBSBusTitleCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    
    func bindData(title: String)
    {
        titleLabel.text = title
    }
    
    func bindData(title: String, index: Int)
    {
        titleLabel.text = title
        if(index == 0)
        {
            selected = true
        }
    }
    
    
    //MARK: - Set up
    private func setupLabel(){
        titleLabel.sizeToFit()
        titleLabel.textColor = UIColor.DBSIconRedWithAlpha(1)
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupLabel()
        
        backgroundColor = UIColor.clearColor()
        
        selectionStyle = UITableViewCellSelectionStyle.None
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        backgroundColor = selected ? UIColor(red: 1, green: 1, blue: 1, alpha: 0.9) : UIColor.clearColor()
    }
    
}
