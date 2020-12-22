//
//  ItunesMediaTVCell.swift
//  hitachi-abb
//
//  Created by macintosh on 2020-12-21.
//

import UIKit

class ItunesMediaTVCell: UITableViewCell {
    
    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblSubtitle: UILabel!
    
    var vm: ItunesMediaTVCellVM! {
        didSet {
            self.imgLogo.setCustomImage(vm.imageURL)
            self.lblTitle.text = vm.title
            self.lblSubtitle.text = vm.subtitle
        }
    }
    
}
