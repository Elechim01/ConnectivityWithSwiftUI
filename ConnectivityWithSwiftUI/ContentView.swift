//
//  ContentView.swift
//  ConnectivityWithSwiftUI
//
//  Created by Michele Manniello on 01/08/21.
//

import SwiftUI

struct ContentView: View {
     var model = ViewModelPhone()
    @State var reachable = "No"
    @State var messageText = ""
    var body: some View {
        VStack{
            Text("Rechable\(reachable)")
                .padding()
            Button(action: {
                if self.model.session.isReachable{
                    self.reachable = "Yes"
                }
                else{
                    self.reachable = "No"
                }
            }, label: {
                Text("Update")
            })
            .padding()
//            Mandiamo un messaggio tra iphone e apple watch..
            TextField("Input your message",text: $messageText)
                .textFieldStyle(PlainTextFieldStyle())
                .padding()
            Button(action: {
                self.model.session.sendMessage(["message":self.messageText], replyHandler: nil) { error in
                    print("☠️\(error.localizedDescription)")
                }
            }, label: {
                Text("Send Message")
            })
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
