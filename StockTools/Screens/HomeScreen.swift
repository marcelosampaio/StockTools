//
//  HomeScreen.swift
//  StockTools
//
//  Created by Marcelo Sampaio on 24/07/24.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            SideBar()
            
            Text("Detail")
                .navigationTitle("Navigation Title")
        }
    }
}

#Preview {
    HomeScreen()
}
