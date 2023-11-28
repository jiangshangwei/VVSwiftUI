//
//  VVCombineViewModel.swift
//  swift-notes
//
//  Created by jsw_cool on 2023/11/28.
//

import Foundation
import Combine

class ViewModel:ObservableObject {
    @Published var username = ""
    @Published var password = ""
    @Published var passwordConfirm = ""
    
    @Published var isUsernameLengthValid = false
    @Published var isPasswordLengthValid = false
    @Published var isPasswordConfirmValid = false
    
    private var cancellableSet: Set<AnyCancellable> = []
    
    init(){
        $username
            .receive(on: RunLoop.main)
            .map { username in
                username.count >= 2
            }
            .assign(to: \.isUsernameLengthValid,on: self)
            .store(in: &cancellableSet)
        
        $password
            .receive(on: RunLoop.main)
            .map { password in
                password.count >= 6
            }
            .assign(to: \.isPasswordLengthValid, on: self)
            .store(in: &cancellableSet)
        
        Publishers
            .CombineLatest($password, $passwordConfirm)
            .receive(on: RunLoop.main)
            .map { password, passwordConfirm in
                !password.isEmpty && password == passwordConfirm
            }
            .assign(to: \.isPasswordConfirmValid, on: self)
            .store(in: &cancellableSet)
    }
}
