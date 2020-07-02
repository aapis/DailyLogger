//
//  ContentView.swift
//  Shared
//
//  Created by Ryan Priebe on 2020-07-02.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: DailyLoggerDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(DailyLoggerDocument()))
    }
}
