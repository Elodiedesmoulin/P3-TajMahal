//
//  MealSection.swift
//  TajMahal
//
//  Created by Elo on 27/07/2024.
//

import SwiftUI

struct MealSectionView: View {
    let viewModel: ViewModel = ViewModel()
    let courseName: String
    let dishes: [Dish]
    
    // Sectionning the dishes between starter and main
    var body: some View {
        Section(header: Text(courseName)
            .font(.headline)
            .foregroundColor(.black)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 5)) {
                ForEach(dishes) { dish in
                    DishCellView(dish: dish)
                        .buttonStyle(PlainButtonStyle())
                        .padding(.horizontal, 1)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 1)
                        .listRowSeparator(.hidden)
                }
            }
            .listStyle(.plain)
            .listRowBackground(Color.clear)
            .listSectionSeparator(.hidden, edges: .bottom)
    }
}

