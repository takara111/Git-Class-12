//
//  TopMainTableViewCell.swift
//  Test-5-8
//
//  Created by 杉浦多可楽 on 2019/09/03.
//  Copyright © 2019 多可楽. All rights reserved.
//

import UIKit
import PGFramework

protocol TopMainTableViewCellDelegate: NSObjectProtocol{
    
}

extension TopMainTableViewCellDelegate {
    
}
// MARK: - Property
class TopMainTableViewCell: BaseTableViewCell {
    weak var delegate: TopMainTableViewCellDelegate? = nil
    @IBOutlet weak var label: UILabel!
}

// MARK: - Life cycle
extension TopMainTableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Protocol
extension TopMainTableViewCell {
    
}

// MARK: - method
extension TopMainTableViewCell {
    
}

