//
//  UIImageView+Extension.swift
//  hitachi-abb
//
//  Created by macintosh on 2020-12-21.
//

import UIKit

extension UIImageView {
    
    func setCustomImage(_ imgURLString: String?) {
        self.image = UIImage(named: Global.IMAGE_PLACEHOLDER)
        
        guard let imageURLString = imgURLString,
            let imageURL = URL(string: imageURLString) else {
                return
        }
        
        DispatchQueue.global().async { [weak self] in
            let data = try? Data(contentsOf: imageURL)
            DispatchQueue.main.async {
                if let data = data {
                    self?.image = UIImage(data: data)
                }
            }
        }
    }
    
}
