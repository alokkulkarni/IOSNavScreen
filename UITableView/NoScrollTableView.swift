//
//  NoScrollTableView.swift
//  FBSnapshotTestCase
//
//  Created by Alok Kulkarni on 31/03/2019.
//

import Foundation
import UIKit

public class NoScrollTableView: UITableView {
    
    override public var contentSize: CGSize
        {
        didSet {
            self.invalidateIntrinsicContentSize()
        }
        
    }
    
    override public var intrinsicContentSize: CGSize
    {
        self.layoutIfNeeded()
        
        return CGSize(width: UIViewNoIntrinsicMetric, height: contentSize.height)
    }
    
}
