//
//  ContentView.swift
//  LandmarkBook
//
//  Created by Atakan Cengiz KURT on 5.10.2021.
//

import SwiftUI

struct DetailsView: View {
  
  var chosenLandmark : Landmark
  
    var body: some View {
      VStack{
        MapView(coordinate: chosenLandmark.locationCoordinate)
          .frame(height: UIScreen.main.bounds.height * 0.3)
          .edgesIgnoringSafeArea(.top)
        
    
        CircleImageView(image: Image(chosenLandmark.imageName))
          .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3)
          .offset( y: UIScreen.main.bounds.height * -0.25)
          .padding(.bottom,UIScreen.main.bounds.height * -0.25)
        
        
        VStack(alignment: .leading, spacing: nil, content: {
          Text(chosenLandmark.name)
            .font(.largeTitle)
            .foregroundColor(.orange)
          HStack{
            Text(chosenLandmark.country)
              .font(.subheadline)
            Spacer()
            Text(chosenLandmark.category)
              .font(.subheadline)
          }
          
        }).padding()
        Spacer()
      }.navigationTitle(Text(chosenLandmark.name))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      DetailsView(chosenLandmark: londonBridgeLandmark)
    }
}
