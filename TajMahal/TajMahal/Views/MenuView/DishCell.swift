//
//  DishButton`.swift
//  TajMahal
//
//  Created by Elo on 25/07/2024.
//

import SwiftUI

struct DishCell: View {
    let dish: Dish
    
    var body: some View {
        NavigationLink(destination: DetailView(dish: dish)) {
            Image(dish.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 115)
                .cornerRadius(15)
                .padding(10)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(dish.name)
                    .font(.headline)
                    .foregroundColor(Color(.darkGray))
                
                Text(dish.description)
                    .font(.subheadline)
                    .foregroundColor(Color(.darkGray))
                    .lineLimit(2)
                
                Spacer().frame(height: 10)
                    
                
                HStack {
                    Text(dish.price)
                        .font(.subheadline)
                        .foregroundColor(Color(.darkGray))
                    Spacer()
                    //piment
                    Image("\(dish.spiceLevel)")
                         .foregroundColor(.gray)
                         .padding(.horizontal, -10)
                                 }
                             }
                     Spacer()
                }
                
                
            
            }
        }
        
        
    



