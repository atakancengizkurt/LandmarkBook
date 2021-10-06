//
//  LandmarkListView.swift
//  LandmarkBook
//
//  Created by Atakan Cengiz KURT on 6.10.2021.
//

import SwiftUI

struct LandmarkListView: View {
  var body: some View {
    NavigationView{
      List(landmarkArray){ landmark in
        NavigationLink(
          destination: DetailsView(chosenLandmark: landmark),
          label: {
            LandmarkListRowView(landmark: landmark)
          })
        
      }
      .navigationTitle("Landmark List")
    }
  }
}

struct LandmarkListView_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkListView()
  }
}
