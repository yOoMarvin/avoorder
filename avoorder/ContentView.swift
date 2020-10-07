//
//  ContentView.swift
//  avoorder
//
//  Created by Marvin Messenzehl on 07.10.20.
//

import SwiftUI
import Firebase

struct ContentView: View {
    @State var order: Order
    @State var showAlert = false
    
    func submitOrder() {
        // Add a new document with a generated ID
        var ref: DocumentReference? = nil
        ref = db.collection("orders").addDocument(data: [
            "quantity": order.quantity,
            "includeSalt": order.includeSalt,
            "includeRedPepperFlakes": order.includeRedPepperFlakes,
            "date": Date()
        ])
        { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
            }
        }
        self.showAlert = true
        print(order)
    }
    
    var body: some View {
        NavigationView{
            VStack(){
                Toggle(isOn: $order.includeSalt ) {
                    Text("Include Salt 🧂")
                }
                Toggle(isOn: $order.includeRedPepperFlakes) {
                    Text("Include Pepper Flakes 🌶")
                }
                Stepper(value: $order.quantity) {
                    Text("Quantity: \(order.quantity)")
                }
                Button(action: submitOrder) {
                    Text("Submit Order")
                }
                .alert(isPresented: $showAlert, content: {
                    Alert(title: Text("Order Complete"), message: Text("Your perfect Avocado Toast is ready soon! 🥑"))
                })
            }
            .padding()
            .navigationBarTitle(Text("Avocado Toast 🥑"))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(order: defaultOrder)
    }
}
