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
        

        List (menuItems) { item in
            
            MenuListRow(item: item)
               
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
