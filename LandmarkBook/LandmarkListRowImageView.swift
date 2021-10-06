//
//  LandmarkListRowImageView.swift
//  LandmarkBook
//
//  Created by Atakan Cengiz KURT on 6.10.2021.
//

import SwiftUI

struct LandmarkListRowImageView: View {
  var landmarkImageView: String
  
    var body: some View {
         Image(landmarkImageView)
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 50, height: 50, alignment: .leading)
    }
}

struct LandmarkListRowImageView_Previews: PreviewProvider {
    static var previews: some View {
      LandmarkListRowImageView(landmarkImageView: "pisa")
    }
}
