//
//  ContentView.swift
//  Bullseye
//
//  Created by Ihsan on 25/04/20.
//  Copyright © 2020 Ihsan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    @State var alertKnockIsVisible: Bool = false
    
    var body: some View {
        VStack {
            VStack {
                Text("Welcome to my first app!")
                    .fontWeight(.bold)
                    .foregroundColor(Color.green)
                Button(action: {
                    print("Button pressed!")
                    self.alertIsVisible = true
                }) {
                    Text(/*@START_MENU_TOKEN@*/"Hit Me!"/*@END_MENU_TOKEN@*/)
                }
                .alert(isPresented: $alertIsVisible) { () ->
                    Alert in
                    return Alert(title: Text("My first app!"), message: Text("Body aja"), dismissButton: .default(Text("Tutup")))
                }
            }
            Button(action: {
                self.alertKnockIsVisible = true
            }) {
                Text(/*@START_MENU_TOKEN@*/"Knock, Knock!"/*@END_MENU_TOKEN@*/)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.red)
            }
            .alert(isPresented: $alertKnockIsVisible) {
                () ->
                Alert in
                return Alert(title: Text("Knock Men"), message: Text("Ketuk saya"), dismissButton: .default(Text("Tutup")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
