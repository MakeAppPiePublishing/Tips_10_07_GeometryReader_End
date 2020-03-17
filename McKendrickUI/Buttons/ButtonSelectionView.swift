//
//  ButtonSelector.swift
//  McKendrickUI
//
// An exercise file for iOS Development Tips Weekly
// A weekely course on LinkedIn Learning for iOS developers
//  Season 10 (Q2 2020) video 07
//  by Steven Lipton (C)2020, All rights reserved
// Learn more at https://linkedin-learning.pxf.io/YxZgj
//This Week:  Learn the basics of the GeometeryReader view for sizing buttons and fonts
//  For more code, go to http://bit.ly/AppPieGithub

// Quarter Share, Ishmael Wang, Lois McKendrick, and
// Trader Tales from the Golden Age of the  Solar Clipper by Nathan Lowell
import SwiftUI

struct ButtonSelectionView: View {
    @Binding var selectedIndex:Int
    var buttonTitles:[String]
    var body: some View {
        VStack{
            ForEach(0..<buttonTitles.count, id:\.self){ buttonIndex in
                TabletButtonView(title: self.buttonTitles[buttonIndex])
            }//foreach
        }//Vstack
    }
}

struct ButtonSelector_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSelectionView(selectedIndex:.constant(1),buttonTitles:["Comms","Handbook","News","Handbook"])
    }
}
