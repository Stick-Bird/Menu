//
//  MenuCard.swift
//  Menu
//
//  Created by user on 2023-08-21.
//

import SwiftUI

struct MenuCard: View {
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(15)
            
            HStack {
                
                Spacer()
                
                Image ("avocado-maki")
                    .resizable()
                    .scaledToFit()
                    .padding([.top, .leading, .bottom])
                
                Text ("Name")
                    .padding([.top, .leading, .bottom])
                
                Spacer()
                
                Text ("1.28")
                    .padding()
        
            }
            
        }
        
    }
}

struct MenuCard_Previews: PreviewProvider {
    static var previews: some View {
        MenuCard()
    }
}
