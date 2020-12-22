//
//    Result.swift
//    Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct Result : Codable {

    let artistId : Int?
    let artistName : String?
    let artistViewUrl : String?
    let artworkUrl100 : String?
    let artworkUrl30 : String?
    let artworkUrl60 : String?
    let artworkUrl600 : String?
    let collectionCensoredName : String?
    let collectionExplicitness : String?
    let collectionHdPrice : Int?
    let collectionId : Int?
    let collectionName : String?
    let collectionPrice : Float?
    let collectionViewUrl : String?
    let contentAdvisoryRating : String?
    let country : String?
    let currency : String?
    let feedUrl : String?
    let genreIds : [String]?
    let genres : [String]?
    let kind : String?
    let primaryGenreName : String?
    let releaseDate : String?
    let trackCensoredName : String?
    let trackCount : Int?
    let trackExplicitness : String?
    let trackHdPrice : Int?
    let trackHdRentalPrice : Int?
    let trackId : Int?
    let trackName : String?
    let trackPrice : Float?
    let trackRentalPrice : Int?
    let trackViewUrl : String?
    let wrapperType : String?


    enum CodingKeys: String, CodingKey {
        case artistId = "artistId"
        case artistName = "artistName"
        case artistViewUrl = "artistViewUrl"
        case artworkUrl100 = "artworkUrl100"
        case artworkUrl30 = "artworkUrl30"
        case artworkUrl60 = "artworkUrl60"
        case artworkUrl600 = "artworkUrl600"
        case collectionCensoredName = "collectionCensoredName"
        case collectionExplicitness = "collectionExplicitness"
        case collectionHdPrice = "collectionHdPrice"
        case collectionId = "collectionId"
        case collectionName = "collectionName"
        case collectionPrice = "collectionPrice"
        case collectionViewUrl = "collectionViewUrl"
        case contentAdvisoryRating = "contentAdvisoryRating"
        case country = "country"
        case currency = "currency"
        case feedUrl = "feedUrl"
        case genreIds = "genreIds"
        case genres = "genres"
        case kind = "kind"
        case primaryGenreName = "primaryGenreName"
        case releaseDate = "releaseDate"
        case trackCensoredName = "trackCensoredName"
        case trackCount = "trackCount"
        case trackExplicitness = "trackExplicitness"
        case trackHdPrice = "trackHdPrice"
        case trackHdRentalPrice = "trackHdRentalPrice"
        case trackId = "trackId"
        case trackName = "trackName"
        case trackPrice = "trackPrice"
        case trackRentalPrice = "trackRentalPrice"
        case trackViewUrl = "trackViewUrl"
        case wrapperType = "wrapperType"
    }
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        artistId = try values.decodeIfPresent(Int.self, forKey: .artistId)
        artistName = try values.decodeIfPresent(String.self, forKey: .artistName)
        artistViewUrl = try values.decodeIfPresent(String.self, forKey: .artistViewUrl)
        artworkUrl100 = try values.decodeIfPresent(String.self, forKey: .artworkUrl100)
        artworkUrl30 = try values.decodeIfPresent(String.self, forKey: .artworkUrl30)
        artworkUrl60 = try values.decodeIfPresent(String.self, forKey: .artworkUrl60)
        artworkUrl600 = try values.decodeIfPresent(String.self, forKey: .artworkUrl600)
        collectionCensoredName = try values.decodeIfPresent(String.self, forKey: .collectionCensoredName)
        collectionExplicitness = try values.decodeIfPresent(String.self, forKey: .collectionExplicitness)
        collectionHdPrice = try values.decodeIfPresent(Int.self, forKey: .collectionHdPrice)
        collectionId = try values.decodeIfPresent(Int.self, forKey: .collectionId)
        collectionName = try values.decodeIfPresent(String.self, forKey: .collectionName)
        collectionPrice = try values.decodeIfPresent(Float.self, forKey: .collectionPrice)
        collectionViewUrl = try values.decodeIfPresent(String.self, forKey: .collectionViewUrl)
        contentAdvisoryRating = try values.decodeIfPresent(String.self, forKey: .contentAdvisoryRating)
        country = try values.decodeIfPresent(String.self, forKey: .country)
        currency = try values.decodeIfPresent(String.self, forKey: .currency)
        feedUrl = try values.decodeIfPresent(String.self, forKey: .feedUrl)
        genreIds = try values.decodeIfPresent([String].self, forKey: .genreIds)
        genres = try values.decodeIfPresent([String].self, forKey: .genres)
        kind = try values.decodeIfPresent(String.self, forKey: .kind)
        primaryGenreName = try values.decodeIfPresent(String.self, forKey: .primaryGenreName)
        releaseDate = try values.decodeIfPresent(String.self, forKey: .releaseDate)
        trackCensoredName = try values.decodeIfPresent(String.self, forKey: .trackCensoredName)
        trackCount = try values.decodeIfPresent(Int.self, forKey: .trackCount)
        trackExplicitness = try values.decodeIfPresent(String.self, forKey: .trackExplicitness)
        trackHdPrice = try values.decodeIfPresent(Int.self, forKey: .trackHdPrice)
        trackHdRentalPrice = try values.decodeIfPresent(Int.self, forKey: .trackHdRentalPrice)
        trackId = try values.decodeIfPresent(Int.self, forKey: .trackId)
        trackName = try values.decodeIfPresent(String.self, forKey: .trackName)
        trackPrice = try values.decodeIfPresent(Float.self, forKey: .trackPrice)
        trackRentalPrice = try values.decodeIfPresent(Int.self, forKey: .trackRentalPrice)
        trackViewUrl = try values.decodeIfPresent(String.self, forKey: .trackViewUrl)
        wrapperType = try values.decodeIfPresent(String.self, forKey: .wrapperType)
    }


}
