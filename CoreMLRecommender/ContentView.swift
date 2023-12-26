//
//  ContentView.swift
//  CoreMLRecommender
//
//  Created by Arun Singh Rathore on 27/12/2023.


import SwiftUI
import Combine
import CoreML


struct ContentView: View {
    @ObservedObject var topRecommendations = Recommender()
    
    var body: some View {
        NavigationView {
            List(topRecommendations.movies) { movie in
                VStack (alignment: .leading) {
                    Text(movie.name)
                    Text("\(movie.score)")
                    .font(.system(size: 14))
                    .foregroundColor(Color.gray)
                }
            }.navigationBarTitle("CoreMLRecommender", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

