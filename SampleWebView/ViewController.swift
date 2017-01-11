//
//  ViewController.swift
//  SampleWebView
//
//  Created by Hitesh on 1/11/17.
//  Copyright © 2017 spaceo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tblList: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        tblList.reloadData()
    }
    
    //MARK: UITableViewDataSource
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        configureCell(cell, forRowAtIndexPath: indexPath)
        return cell
    }
    
    func configureCell(cell: UITableViewCell, forRowAtIndexPath: NSIndexPath) {
        if forRowAtIndexPath.row == 0 {
            cell.textLabel?.text = "Open Url"
        } else {
            cell.textLabel?.text = "Open PDF File"
        }
        cell.accessoryType = .DisclosureIndicator
    }
    
    //MARK: UITableViewDelegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let objWeb = self.storyboard?.instantiateViewControllerWithIdentifier("WebVCID") as! WebVC
        if indexPath.row == 0 {
            objWeb.strURL = "https://www.google.co.in"
        } else {
            objWeb.strURL = "http://www.pdf995.com/samples/pdf.pdf"
        }
        self.navigationController?.pushViewController(objWeb, animated: true)
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 44
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

