//
//  MovieDataProcessor.swift
//  favorite-movies-app
//
//  Created by Ben Duke on 6/05/17.
//  Copyright © 2017 Ben Duke. All rights reserved.
//

import Foundation

class MovieDataProcessor{
    static func mapJsonToMovies(object: [String: AnyObject], moviesKey: String) ->
        [Movie]{
            var mappedMovies: [Movie] = []
            
            guard let movies = object[moviesKey] as? [[String: AnyObject]] else {
                return mappedMovies }
            
            print ("about to process movies")
            
            for movie in movies{
                guard let id = movie["imdbID"] as? String,
                    let name = movie["Title"] as? String,
                    let year = movie["Year"] as? String,
                    let imageUrl = movie["Poster"] as? String else {continue}
                
                let movieClass = Movie(id:id, title: name, year: year, imageUrl: imageUrl)
                mappedMovies.append(movieClass)
            }
            return mappedMovies
            }
    static func write(movies: [Movie]){
        // TODO: Implementation :)
    }
}
