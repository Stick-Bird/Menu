//
//  ContentView.swift
//  ContentView
//
//  Created by user on 2023-08-20.
//

import SwiftUI

struct MenuView: View {
    
    var body: some View {
        
        let menuItems: [MenuItem] = [MenuItem]()
        
        List (menuItems) { items in
            
                HStack {
                    
                    Image (items.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 50)
                        .cornerRadius(10)
                        
                    Text (items.name)
                        .bold()
                    
                    Spacer()
                    
                    Text ("$" + items.price)
                  
                }
                .listRowSeparator(.hidden)
                .listRowBackground(Color(.brown).opacity(0.1))
        }
        .listStyle(.plain)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
