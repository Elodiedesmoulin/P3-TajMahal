//
//  DetailView.swift
//  TajMahal
//
//  Created by Elo on 25/07/2024.
//

import SwiftUI

struct DetailView: View {
    let dish: Dish
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .topTrailing) {
                Image(dish.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 340, height: 400)
                    .cornerRadius(15)
                    .padding(.horizontal)
                
                Image("\(dish.spiceLevel)")
                     .foregroundColor(.gray)
                     .frame(width: 70,height: 30)
                     .background(.white)
                     .cornerRadius(30)
                     .padding(.horizontal, 25)
                     .padding(.vertical, 10)
            }
            
            Spacer().frame(height: 20)
            
            Text("Allergies:")
                .padding(.horizontal, 20)
                .font(.headline)
                .padding(.top, 10)
                .padding(.vertical, 1)
                .foregroundColor(Color(.darkGray))
            Text(dish.allergens)
                .padding(.horizontal, 20)
                .font(.subheadline)
                .foregroundColor(Color(.darkGray))
            
            Rectangle()
                .foregroundColor(.gray.opacity(0.3))
                .frame(height: 2)
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
            
            Text("Ingrédients:")
                .padding(.horizontal, 20)
                .font(.headline)
                .padding(.vertical, 5)
                .foregroundColor(Color(.darkGray))
            Text(dish.ingredients)
                .font(.subheadline)
                .padding(.horizontal, 20)
                .foregroundColor(Color(.darkGray))
            
            Spacer()

        }
        .padding()
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                    }
                    Text(dish.name)
                        .font(.headline)
                }
            }
        }
    }
}


/*#Preview {
    DetailView()
}*/
