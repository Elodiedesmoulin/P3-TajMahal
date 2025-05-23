//
//  DishButton`.swift
//  TajMahal
//
//  Created by Elo on 25/07/2024.
//

import SwiftUI

struct DishCellView: View {
    let dish: Dish
    
    // Represent cell for a dish
    var body: some View {
        HStack {
            Image(dish.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 105)
                .cornerRadius(15)
                .padding(10)
            
            
            VStack(alignment: .leading, spacing: 5) {
                Text(dish.name)
                    .font(.headline)
                    .foregroundColor(Color(.darkGray))
                
                Text(dish.description)
                    .font(.custom("PlusJakartaSans", size: 14))
                    .foregroundColor(Color(.darkGray))
                    .lineLimit(2)
                
                HStack {
                    Text(dish.price)
                        .font(.subheadline)
                        .foregroundColor(Color(.darkGray))
                    
                    Spacer()
                    
                    SpiceView(spiceLevel: dish.spiceLevel)
                        .padding(.trailing, 20)
                }
            }
            .font(Font.custom("PlusJakartaSans", size: 20))
            .padding(.top, 15)
            Spacer()
        }
        .overlay(NavigationLink(destination: DetailView(dish: dish), label: {
            EmptyView()
        }).opacity(0))
    }
}

#Preview {
    DishCellView(dish: ViewModel().apetizerArray[0])
}




