//
//  UIImageView+Extension.swift
//  hitachi-abb
//
//  Created by macintosh on 2020-12-21.
//

import UIKit
import Kingfisher

extension UIImageView {
    
    func setCustomImage(_ imgURLString: String?) {
        guard let imageURLString = imgURLString,
              let imageURL = URL(string: imageURLString) else {
            self.image = UIImage(named: Global.IMAGE_PLACEHOLDER)
            return
        }
        
        self.kf.indicatorType = .activity
        self.kf.setImage(
            with: imageURL,
            placeholder: UIImage(named: Global.IMAGE_PLACEHOLDER),
            options: [
                .transition(.fade(1)),
                .cacheOriginalImage
            ])
    }
    
}
