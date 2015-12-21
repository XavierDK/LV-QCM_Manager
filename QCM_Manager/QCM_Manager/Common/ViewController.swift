//
//  ViewController.swift
//  QCM_Manager
//
//  Created by Xavier De Koninck on 20/12/2015.
//  Copyright © 2015 LinkValue. All rights reserved.
//

import Foundation
import UIKit
import RxSwift

extension UIViewController {
  
  var detailsViewController : UINavigationController? {
    
    if let del = UIApplication.sharedApplication().delegate as? AppDelegate {
      
      let splitViewController = del.window!.rootViewController as! UISplitViewController
      if splitViewController.viewControllers.count == 2 {
        if let details = splitViewController.viewControllers[1] as? UINavigationController {
          return details
        }
      }
    }
    
    return nil
  }
  
  var masterViewController : UINavigationController? {
    
    if let del = UIApplication.sharedApplication().delegate as? AppDelegate {
      
      let splitViewController = del.window!.rootViewController as! UISplitViewController
      if splitViewController.viewControllers.count == 2 {
        if let master = splitViewController.viewControllers[0] as? UINavigationController {
          return master
        }
      }
    }
    
    return nil
  }

}