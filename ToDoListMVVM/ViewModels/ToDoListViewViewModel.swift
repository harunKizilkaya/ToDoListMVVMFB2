//
//  ToDoListViewViewModel.swift
//  ToDoListMVVM
//
//  Created by Harun Kizilkaya on 20.07.23.
//

import FirebaseFirestore
import Foundation

/// ViewModel for list of items view
/// Primary tab
class ToDoListViewViewModel: ObservableObject {
    
    @Published var showingNewItemView: Bool = false
    
    private let userId: String
    
    init(userId: String){
        self.userId = userId
    }
    
    ///  Delete to do list item
    ///  - Parameter id: item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("user")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
