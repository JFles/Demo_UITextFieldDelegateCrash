//
//  ChildTableViewController.swift
//  UITextFieldDelegateCrashDemo
//
//  Created by Jeremy Fleshman on 5/10/20.
//  Copyright © 2020 Jeremy Fleshman. All rights reserved.
//

import UIKit

class ChildTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "childCell",
                                                       for: indexPath) as? ChildVCTableViewCell else { fatalError() }

        return cell
    }
    
}
