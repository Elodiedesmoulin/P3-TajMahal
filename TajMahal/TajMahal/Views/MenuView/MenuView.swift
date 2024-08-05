//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

struct MenuView: View {
    let viewModel = ViewModel()
    var body: some View {
        
        List {
            MealSection(courseName: "Entrées", dishes: viewModel.apetizerArray)
            MealSection(courseName: "Plats Principaux", dishes: viewModel.mainCourseArray)
        }
        .padding(.horizontal, -25.0)
        .navigationBarTitleDisplayMode(.inline).toolbar{
            ToolbarItem(placement: .principal) {
                Text("Menu")
                    .font(.title2.bold())
                    .accessibilityAddTraits(.isHeader)
            }
        }
    }
}

#Preview {
    NavigationStack{
        MenuView()
    }
}



