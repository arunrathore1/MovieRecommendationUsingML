//
//  Movie.swift
//  CoreMLRecommender
//
//  Created by Arun Rathore on 26/12/23.

import Foundation

struct Movie: Identifiable {
    public var id = UUID()
    public var name: String
    public var score: Double

}

