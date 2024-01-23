//
//  UserViewModel.swift
//  ProtocolOriented
//
//  Created by Melik Demiray on 23.01.2024.
//

import Foundation



class UserViewModel {

    let userService: UserService

    init(userService: UserService) {
        self.userService = userService
    }


    func fetchUser(completion: @escaping (Result<User, Error>) -> Void) {
        userService.fetchUser { result in
            switch result {
            case .success(let user):
                completion(.success(user))
            case .failure(_):
                print("Error")
            }
        }
    }


}
