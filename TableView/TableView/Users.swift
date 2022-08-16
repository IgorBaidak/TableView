//
//  Users.swift
//  TableView
//
//  Created by Igor Baidak on 16.08.22.
//

import Foundation

struct Users {
    var firstName: String
    var secondName: String
    var email: String
    var numberPhone: String
}


struct UserData {
    static func createUser() -> [Users] {
        var user: [Users] = []
        // перемешиваем и записываем
        let firstNames = UserStorage.firstName.shuffled()
        let secondNames = UserStorage.secondName.shuffled()
        let email = UserStorage.email.shuffled()
        let numberPhone = UserStorage.numberPhone.shuffled()

        for index in 0 ..< firstNames.count {
            let person = Users(firstName: firstNames[index],
                               secondName: secondNames[index],
                               email: email[index],
                               numberPhone: numberPhone[index])
            user.append(person)
        }
        return user
    }
}
