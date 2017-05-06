//
//  Movie.swift
//  favorite-movies-app
//
//  Created by Ben Duke on 6/05/17.
//  Copyright © 2017 Ben Duke. All rights reserved.
//

import Foundation

class Movie {
    var id : String = ""
    var title : String = ""
    var year: String = ""
    var imageUrl: String = ""
    var plot: String = ""
    
    init(id: String, title: String, year: String, imageUrl: String, plot: String = ""){
        self.id = id
        self.title = title
        self.year = year
        self.imageUrl = imageUrl
        self.plot = plot
    }
}