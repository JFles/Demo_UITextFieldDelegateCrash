//
//  RootTableViewController.swift
//  UITextFieldDelegateCrashDemo
//
//  Created by Jeremy Fleshman on 5/10/20.
//  Copyright © 2020 Jeremy Fleshman. All rights reserved.
//

import UIKit

class RootTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "rootCell",
                                                       for: indexPath)
        
        cell.textLabel?.text = "Click me!"
        
        return cell
    }
}
