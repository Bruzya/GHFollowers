//
//  GFError.swift
//  GHFollowers
//
//  Created by Evgenii Mazrukho on 31.12.2023.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data recieve from the server was invalid. Please try again."
    case unableToFavorite = "There was an favorite this user. Please try again"
    case alreadyInFavorites = "You've already favorited this user. You must REALLY like them!"
}
