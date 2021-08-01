//
//  ContentView.swift
//  ConnectivityWithSwiftUI WatchKit Extension
//
//  Created by Michele Manniello on 01/08/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = ViewModelWatch()
    @State var meessageText : String = ""
    var body: some View {
        VStack {
            Text("Messaggi: ")
            Text(self.model.messageText)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
