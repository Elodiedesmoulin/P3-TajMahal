//
//  InformationView.swift
//  TajMahal
//
//  Created by Elo on 25/07/2024.
//

import SwiftUI

struct InformationView: View {
    let imageName: String
    let leftText: String
    let rightText: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
            Text(leftText)
            Spacer()
            Text(rightText)
        }
        .font(.subheadline)
    }
}
