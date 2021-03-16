//
//  ViewController.swift
//  sidebar
//
//  Created by Aamir Khan on 29/11/20.
//

import UIKit

class HomescreenVC: UIViewController {

    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    
    var sideMenuOpen = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(toggleSideMenu), name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }


    @objc func toggleSideMenu() {
        if sideMenuOpen {
            sideMenuOpen = false
            sideMenuConstraint.constant = -211
        } else {
            sideMenuOpen = true
            sideMenuConstraint.constant = 0
        }
    }
}

