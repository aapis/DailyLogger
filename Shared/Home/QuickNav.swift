//
//  QuickNav.swift
//  DailyLogger
//
//  Created by Ryan Priebe on 2020-07-02.
//

import SwiftUI

struct QuickNav: View {
    let items = ["Daily"]
    
    var body: some View {
        HStack {
            GeometryReader { geometry in
                ZStack {
                    HStack(spacing: 0) {
                        MenuButton(text: "Test", fgColor: Color.red, bgColor: Color.black, action: {})
                        MenuButton(text: "Test", fgColor: Color.red, bgColor: Color.black, action: {})
                    }
                }
                
                NavigationView {
                    List {
                        ForEach(items, id: \.self) { row in
                            Text(row)
                        }
                    }
                    .navigationBarTitle("My Logs")
                }
            }
        }
    }
}

struct MenuButton: View {
    let text: String
    let fgColor: Color
    let bgColor: Color
    let action: () -> Void
//    let geometry: GeometryReader
    
    var body: some View {
        GeometryReader { geometry in
            Button(text, action: action)
                .frame(width: geometry.size.width / 2, height: 50)
                .foregroundColor(fgColor)
                .background(bgColor)
        }
    }
}

struct QuickNav_Previews: PreviewProvider {
    static var previews: some View {
        QuickNav()
    }
}
