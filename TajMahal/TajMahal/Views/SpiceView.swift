//
//  SpiceLevel.swift
//  TajMahal
//
//  Created by Elo on 30/07/2024.
//

import SwiftUI

struct SpiceView: View {
    let spiceLevel: SpiceLevel
    
    //Représente le niveau de piment correspondant à chaque plat
    var body: some View {
        let redchili = Image("redchili")
            .resizable()
            .frame(width: 13, height: 13)
        let greychili = Image("greychili")
            .resizable()
            .frame(width: 13, height: 13)
        
        HStack(spacing: 10) {
            switch spiceLevel{
            case .hot:
                redchili
                redchili
                redchili
            case .medium:
                redchili
                redchili
                greychili
            case .light:
                redchili
                greychili
                greychili
            }
        }
        .padding(10)
        .background(Color.white)
        .cornerRadius(25)
        .frame(width: 50, height: 50)
    }
}


#Preview {
    SpiceView(spiceLevel: ViewModel().apetizerArray[0].spiceLevel)
}
