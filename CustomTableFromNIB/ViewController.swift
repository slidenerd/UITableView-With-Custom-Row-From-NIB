//
//  ViewController.swift
//  CustomTableFromNIB
//
//  Created by Vivek Ramesh on 12/05/15.
//  Copyright (c) 2015 slidenerd. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "NameAndColorCell", bundle: nil);
        tableView.registerNib(nib, forCellReuseIdentifier: "MyTable")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100;
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80;
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("MyTable") as! NameAndColorCell
        cell.nameLabel.text = "Vivz is now ranking at \(indexPath.row+1)"
        cell.colorLabel.text = "Anky is at \(indexPath.row * 2)"
        return cell;
    }

}

