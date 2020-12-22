//
//  ItunesMediaTVCellVM.swift
//  hitachi-abb
//
//  Created by macintosh on 2020-12-21.
//

class ItunesMediaTVCellVM {
    
    var imageURL: String?
    var title: String?
    var subtitle: String?
    
    init(data: Result) {
        self.imageURL = data.artworkUrl100
        self.title = data.artistName
        self.subtitle = data.collectionName
    }
    
}
