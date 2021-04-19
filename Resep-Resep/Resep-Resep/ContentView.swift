//
//  ContentView.swift
//  Resep-Resep
//
//  Created by m.luthfi rizky ginting on 13/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Home()
                .tabItem {
                    Image(systemName: "house.fill")

                    Text("home")
                }
            UserView()
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Account")
                }
        }
    }
 
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
