//
//  SwitchingViewController.swift
//  MultiViewApp
//
//  Created by Student on 2017-10-04.
//  Copyright © 2017 Centennial College. All rights reserved.
//

import UIKit
class SwitchmgViewController: UIViewController {
    //PRIVATE INSTANCE VARIABLES
    
    private var _blueViewController:BlueViewController!
    private var _yellowViewController:YellowViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self._blueViewController = storyboard?.instantiateViewController(withIdentifier: "Blue") as! BlueViewController
        self._blueViewController.view.frame = view.frame
        SwitchmgViewController(nibName: nil, bundle: self._blueViewController)
        
        
    }
    @IBAction func switchViews(sender: UIBarButtonItem){
        if self._yellowViewController.view.superview == nil{
            if self.-_yellowViewController == nil {
            storyboard? .instantiateViewController(withIdentifier: "Yellow") as! YellowViewController
            }
        }
        else if self._blueViewController.view.superview == nil
        {
            storyboard?.instantiateViewController(withIdentifier: "Blue")as! BlueViewController
        }
    }
    //clean up current controller
    
    private func switchViewController(from fromVC: UIViewController?, to toVC: UIViewController?){
        
        if fromVC != nil {
            fromVC!.willMove(toParentViewController: nil)
            fromVC!.view.removeFromSuperview()
            fromVC!.removeFromParentViewController()
            
        }
        if toVC != nil{
            self.addChildViewController(toVC!)
            self.view.insertSubview(toVC!.view, at: 0)
            toVC!.didMove(toParentViewController: self)
        }
    }
}
