//
//  ContentView.swift
//  xCodeWarGame
//
//  Created by Jack Hyde on 2/17/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
            
            VStack {
                Image("logo")
                
                HStack{
                    Image("card5")
                    Image("card5")
                }
                
                Button {
                    print("Button clicked!")
                } label: {
                    Image("dealbutton")
                }
                
                HStack {
                    VStack {
                        Text("Player")
                        Text("0")
                    }
                    VStack {
                        Text("CPU")
                        Text("0")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
