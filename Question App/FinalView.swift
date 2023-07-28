//
//  FinalView.swift
//  Question App
//
//  Created by scholar on 7/28/23.
//

import SwiftUI

struct FinalView: View {
    var body: some View {
        VStack() {
            Text("Thank you for answering these questions!")
            Text("I'm sorry if I made fun of your opinions 😿 cats to make you feel better!")
            NavigationLink(destination : ContentView()){
                Text("Return Home")
                    .font(.title2)
                    .tint(Color.black)
                    .underline()
            }
        } //vstack closing
    } //closing bracket
} //closing bracket

struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalView()
    }
}
