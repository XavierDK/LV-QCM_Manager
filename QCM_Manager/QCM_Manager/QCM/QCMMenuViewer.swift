//
//  QCMMenuViewer.swift
//  QCM_Manager
//
//  Created by Xavier De Koninck on 20/12/2015.
//  Copyright © 2015 LinkValue. All rights reserved.
//

import Foundation
import UIKit

class QCMMenuViewer: UITableViewController {

  override func viewWillAppear(animated: Bool) {
    
    super.viewWillAppear(animated)
    
    self.navigationItem.hidesBackButton = true
  }
}
