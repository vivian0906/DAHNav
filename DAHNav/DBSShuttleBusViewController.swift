//
//  DBSShuttleBusViewController.swift
//  DAHNav
//
//  Created by shou wei on 16/12/15.
//  Copyright © 2015 shou wei. All rights reserved.
//

import UIKit

class DBSShuttleBusViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    var shuttleBusList: NSArray!
    var shuttleBusLocationList: NSArray!

    @IBOutlet weak var leftTableView: UITableView!
    @IBOutlet weak var rightTableView: UITableView!
    
    
    // MARK: - Set up
    private func setupLeftTable(){
        leftTableView.delegate = self
        leftTableView.dataSource = self
        
        leftTableView.registerNib(UINib.init(nibName: "DBSBusTitleCell", bundle: nil), forCellReuseIdentifier: "DBSBusTitleCell")
        
        leftTableView.backgroundColor = UIColor.DBSBlackLeftWithAlpha(1)
        
        leftTableView.rowHeight = UITableViewAutomaticDimension
        leftTableView.estimatedRowHeight = 36.0
        
        setDefaultSelection()
    }
    
    private func setupRightTable(){
        rightTableView.delegate = self
        rightTableView.dataSource = self
        
        rightTableView.registerNib(UINib.init(nibName: "DBSPickupPointCell", bundle: nil), forCellReuseIdentifier: "DBSPickupPointCell")
        
        rightTableView.registerNib(UINib.init(nibName: "DBSBusContentCell", bundle: nil), forCellReuseIdentifier: "DBSBusContentCell")
        
        rightTableView.rowHeight = UITableViewAutomaticDimension
        rightTableView.estimatedRowHeight = 300.0
        
    }
    
    
    private func setupArray(){
        shuttleBusList = ["Inter-office loop service", "Within Changi Business Park", "Eightrium shuttle bus service", "To and from DBS Asia Hub"]
        shuttleBusLocationList = ["Jurong East", "Tanah Merah", "Toa Payoh", "Hougang", "City Hall"]
    }
    
    // MARK: - Life Circle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupArray()
        setupLeftTable()
        setupRightTable()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(animated: Bool) {
       super.viewDidAppear(animated)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    
    // MARK: - Table Delegate
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if tableView == leftTableView
        {
            return 48
        }
        else
        {
            return 0
        }
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if tableView == leftTableView
        {
            rightTableView.reloadData()
            NSTimer.scheduledTimerWithTimeInterval(0.02, target: self, selector: Selector("setOffsetToZero"), userInfo: nil, repeats: false)

        }
    }
    

    
    func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if tableView == leftTableView
        {
            view.tintColor = UIColor.clearColor()
            let header: UITableViewHeaderFooterView = view as! UITableViewHeaderFooterView
            header.textLabel?.textColor = UIColor.whiteColor()
        }
    }
    
    
    
    
    
    // MARK: - Table data source
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        if tableView == leftTableView
        {
            return 2
        }
        return 1
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if tableView == leftTableView
        {
            if section == 0{
                return "Time Schedule:"
            }
            return "Pick-Up Points:"
        }
        return nil
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == leftTableView
        {
        if section == 0{
            return shuttleBusList.count
        }
        return shuttleBusLocationList.count
        }
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if tableView == leftTableView
        {
            let cell = tableView.dequeueReusableCellWithIdentifier("DBSBusTitleCell", forIndexPath: indexPath) as! DBSBusTitleCell
            
            if indexPath.section == 0
            {
                cell.bindData(shuttleBusList[indexPath.row] as! String)
            }
            else
            {
                cell.bindData(shuttleBusLocationList[indexPath.row] as! String)
            }
            
            
            return cell
        }
        
        
        //right table
        if let path = leftTableView.indexPathForSelectedRow
        {
                if path.section == 0
                {
                    //bus service
                   let cell = tableView.dequeueReusableCellWithIdentifier("DBSBusContentCell", forIndexPath: indexPath) as! DBSBusContentCell
                    cell.bindData(DBSBusType(rawValue: (path.row))!)
                    return cell
                }
                else
                {
                    //bus pick-up points
                    let cell = tableView.dequeueReusableCellWithIdentifier("DBSPickupPointCell", forIndexPath: indexPath) as! DBSPickupPointCell
                    cell.bindData(DBSShuttleBusPickPointType(rawValue: (path.row))!)
                    return cell
                }
        }
        return UITableViewCell()
    }
    
    //MARK:   helper
    func setOffsetToZero(){
        rightTableView.setContentOffset(CGPointZero, animated:false)
    }
    
    func setDefaultSelection()
    {
        let rowToSelect:NSIndexPath = NSIndexPath(forRow: 0, inSection: 0)
        leftTableView.selectRowAtIndexPath(rowToSelect, animated: true, scrollPosition: UITableViewScrollPosition.None)
        tableView(leftTableView, didSelectRowAtIndexPath: rowToSelect)
    }
}
