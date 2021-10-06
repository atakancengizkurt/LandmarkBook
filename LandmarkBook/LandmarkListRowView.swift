//
//  LandmarkListRow.swift
//  LandmarkBook
//
//  Created by Atakan Cengiz KURT on 6.10.2021.
//

import SwiftUI

struct LandmarkListRowView: View {
  var landmark: Landmark
    var body: some View {
      HStack{
        LandmarkListRowImageView(landmarkImageView: landmark.imageName)
        Text(landmark.name)
      }
    }
}

struct LandmarkListRow_Previews: PreviewProvider {
    static var previews: some View {
      LandmarkListRowView(landmark: londonBridgeLandmark)
    }
}
