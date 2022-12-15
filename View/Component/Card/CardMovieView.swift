//
//  CardMovieView.swift
//  D-Movie
//
//  Created by I Gede Bagus Wirawan on 14/12/22.
//

import SwiftUI

struct CardMovieView: View {
        //variable
        var moviePoster: String = ""
        var movieName: String = ""
        var movieGenre: String = ""
        
        var body: some View {
            
            VStack {
                Image(moviePoster)
                    .resizable()

                HStack {
                    VStack(alignment: .leading) {
                        Text(movieGenre)
                            .font(.headline)
                            .foregroundColor(.secondary)
                        Text(movieName)
                            .font(.title3)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .lineLimit(3)
                
                        
                    }
                    .layoutPriority(10)

                    Spacer()
                }
                .padding()
            }
            .frame(width: 275, height: 350)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), lineWidth: 1)
            )
            .padding([.top, .horizontal])
    }
}

struct CardMovieView_Previews: PreviewProvider {
    static var previews: some View {
        CardMovieView(moviePoster: "naruto", movieName: "Naruto the Last Movie", movieGenre: "Japan")
    }
}
