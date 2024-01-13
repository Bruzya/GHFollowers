//
//  UITableView + ext.swift
//  GHFollowers
//
//  Created by Evgenii Mazrukho on 13.01.2024.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
