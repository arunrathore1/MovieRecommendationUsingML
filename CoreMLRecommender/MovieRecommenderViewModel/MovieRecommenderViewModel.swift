//
//  MovieRecommenderViewModel.swift
//  CoreMLRecommender
//
//  Created by Arun Rathore on 26/12/23.


import Foundation

public class Recommender: ObservableObject {

    @Published var movies = [Movie]()

    init(){
        load()
    }

    func load() {
        do{
            let recommender = MovieRecommender()

            let ratings : [String: Double] = ["Home Alone": 3.0, "Titanic": 3.5]
            let input = MovieRecommenderInput(items: ratings, k: 5, restrict_: [], exclude: [])

            let result = try recommender.prediction(input: input)
            var tempMovies = [Movie]()

            for str in result.recommendations{
                let score = result.scores[str] ?? 0
                tempMovies.append(Movie(name: "\(str)", score: score))
            }
            self.movies = tempMovies

        }catch(let error){
            print("error is \(error.localizedDescription)")
        }

    }
}
