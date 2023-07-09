//
//  DetailViewModel.swift
//  test MVVM-2
//
//  Created by Evgenii Kutasov on 06.07.2023.
//

import Foundation

class DetailViewModel: DetailViewModelType {
    
    private var profile: Profile
    
    var description: String {
        return "\(profile.name) \(profile.secondName) \(profile.age) old!"
    }
    
    var age: Box<String?> = Box(value: nil)
    
    init(profile: Profile) {
        self.profile = profile
    }
      
}
