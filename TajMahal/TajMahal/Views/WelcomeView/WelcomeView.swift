//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            VStack() {
                // Top image
                Image("TajMahal")
                
                
                // Restaurant's informations
                VStack(alignment: .leading, spacing: 20) {
                    HStack{
                        VStack{
                            Text("Restaurant Indien")
                                .font(.custom("PlusJakartaSans", size: 15))
                                .foregroundColor(.gray)
                            
                            Text("Taj Mahal")
                                .font(.title)
                                .fontWeight(.bold)
                        }
                        
                        
                        Spacer()
                        
                        Image("Logo")
                            .resizable()
                            .frame(width: 40, height: 40.0)
                            .colorMultiply(Color(.systemGray))
                        
                    }
                    .padding(.top)
                    
                    // Opening Hours
                    InformationView(imageName: "clock", leftText: "Mardi", rightText: "11h30 - 14h30 • 18h30 - 22h00")
                    
                    // Service Type
                    InformationView(imageName: "takeoutbag.and.cup.and.straw.fill", leftText: "Type de Service", rightText: "À emporter")
                    
                    // Adress
                    InformationView(imageName: "mappin.and.ellipse", leftText: "12 Avenue de la Brique - 75010 Paris", rightText: "")
                    
                    //Website
                    InformationView(imageName: "globe", leftText: "www.tajmahal.fr", rightText: "")
                    
                    //Phone Number
                    InformationView(imageName: "phone", leftText: "06 12 34 56 78", rightText: "")
                    
                    // Button
                    NavigationLink(destination: MenuView()) {
                        Text("Accéder au menu")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.customRed)
                            .cornerRadius(10)
                    }
                }
                Spacer()
            }
            
            .padding(.horizontal, 30.0)
        }
    }
}


#Preview {
    WelcomeView()
}


