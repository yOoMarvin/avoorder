//
//  Firebase.swift
//  avoorder
//
//  Created by Marvin Messenzehl on 07.10.20.
//

import Foundation
import Firebase

let db = Firestore.firestore()

//func submitOrder() {
//        // Add a new document with a generated ID
//        var ref: DocumentReference? = nil
//        ref = db.collection("orders").addDocument(data: [
//            "quantity": order.quantity,
//            "includeSalt": order.includeSalt,
//            "includeRedPepperFlakes": order.includeRedPepperFlakes,
//            "date": Date()
//        ])
//        { err in
//            if let err = err {
//                print("Error adding document: \(err)")
//            } else {
//                print("Document added with ID: \(ref!.documentID)")
//            }
//        }
//        self.showAlert = true
//        print(order)
//    }
