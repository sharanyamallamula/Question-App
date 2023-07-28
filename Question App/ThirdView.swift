//
//  ThirdView.swift
//  Question App
//
//  Created by scholar on 7/28/23.
//

import SwiftUI

struct ThirdView: View {
    @State private var neutralsAnswer = ""
    @State private var brightsAnswer = ""
    @State private var pastelsAnswer = ""
    @State private var neutralPeople = 0
    @State private var brightPeople = 0
    @State private var pastelPeople = 0
    var body: some View {
        VStack() {
            Text("Question Two :")
            Text("Neutrals, bright colors, or pastels?")
            HStack() {
                Button("Neutrals") {
                    neutralPeople = neutralPeople + 1
                    neutralsAnswer = "Safe but good option! Neutrals are so pretty.\nYou and \(neutralPeople) people have good taste"
                } //neutral button closing
                .padding()
                .buttonStyle(.borderedProminent)
                .tint(Color(red: 0.7333333333333333, green: 0.8156862745098039, blue: 1.0))
                .font(.title3)
                Button("Brights") {
                    brightPeople = brightPeople + 1
                    brightsAnswer = "I'm hoping by bright you don't mean neon... if you don't then this is also a good option!\nYou and \(brightPeople) have good taste unless you like neons."
                } //brights button closing
                .padding()
                .buttonStyle(.borderedProminent)
                .tint(Color(red: 0.7333333333333333, green: 0.8156862745098039, blue: 1.0))
                .font(.title3)
                Button("Pastels") {
                    pastelPeople = pastelPeople + 1
                    pastelsAnswer = "This is a great choice! Pastel colors are soso pretty.\n You and \(pastelPeople) have a great fantastic opinion."
                } //pastels button closing
                .padding()
                .buttonStyle(.borderedProminent)
                .tint(Color(red: 0.7333333333333333, green: 0.8156862745098039, blue: 1.0))
                .font(.title3)
            } //hstack closing
            if neutralsAnswer == "Safe but good option! Neutrals are so pretty.\nYou and \(neutralPeople) people have good taste"{
                Text(neutralsAnswer)
            } //if statement closing
            else if brightsAnswer == "I'm hoping by bright you don't mean neon... if you don't then this is also a good option!\nYou and \(brightPeople) have good taste unless you like neons."{
                Text(brightsAnswer)
            } //else if statement closing
            else if pastelsAnswer == "This is a great choice! Pastel colors are soso pretty.\n You and \(pastelPeople) have a great fantastic opinion."{
                Text(pastelsAnswer)
            } //else if statement closing
            
            NavigationLink(destination : FourthView()) {
                Text("Continue on... →")
                    .font(.title2)
                    .tint(Color.black)
                    .underline()
            } //navlink closing
            
        .navigationTitle("Question 2")
        .navigationBarHidden(true)
        } //vstack closing
    } //closing bracket
} //closing bracket

//nothing is changed under here
struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
