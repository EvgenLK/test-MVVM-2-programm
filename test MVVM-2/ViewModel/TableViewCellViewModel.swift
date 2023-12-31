//
//  TableViewCellViewModelType.swift
//  test MVVM-2
//
//  Created by Evgenii Kutasov on 05.07.2023.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {
    
    private var profile: Profile
    
    var fullName: String {
        return profile.name + " " + profile.secondName
    }
    var age: String {
        return String(describing: profile.age)
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
