//
//  ContentView.swift
//  ContentView
//
//  Created by user on 2023-08-20.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems: [MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        

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
            .listRowBackground(Color(.brown).opacity(0.1)
            )
            
        }
        .listStyle(.plain)
        .onAppear {
            //Call for the data
            menuItems =  dataService.getData()
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
