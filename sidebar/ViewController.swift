//
//  ViewController.swift
//  sidebar
//
//  Created by Aamir Khan on 29/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func onMoreTapped() {
        print("Toggle SideMenu")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
}
