//
//  MovieModel.swift
//  D-Movie
//
//  Created by I Gede Bagus Wirawan on 14/12/22.
//


import Foundation

struct belongsToCollection: Hashable, Codable, Identifiable {
    var id: String?
    var name: String?
    var poster_path: String?
    var backdrop_path: String?
}

struct genres: Hashable, Codable, Identifiable {
    var id: Int? = 0
    var name: String?
}

struct productionCompanies: Hashable, Codable, Identifiable {
    var id: Int? = 0
    var logo_path: String?
    var name: String?
    var origin_country: String?
}

struct productionCountries: Hashable, Codable {
    var iso_3166_1: String?
    var name: String?
}

struct spokenLanguages: Hashable, Codable {
    var english_name: String?
    var iso_639_1: String?
    var name: String?
}

//Main Model
struct MovieModel: Hashable, Codable, Identifiable {
    var adult: String?
    var backdrop_path: String?
    var belongs_to_collection: [belongsToCollection]
    var budget: Int? = 0
    var genres: [genres]
    var homepage: String?
    var id: Int? = 0
    var imdb_id: String?
    var original_language: String?
    var original_title: String?
    var overview: String?
    var popularity: Int? =  0
    var poster_path: String?
    var production_companies: [productionCompanies]
    var production_countries: [productionCountries]
    var release_date: String?
    var revenue: Int? = 0
    var runtime: Int? = 0
    var spoken_languages: [spokenLanguages]
    var status: String?
    var tagline: String
    var title: String?
    var video: String?
    var vote_average: Int? = 0
    var vote_count: Int? = 0
}
