//
//  TableViewCellViewModelType.swift
//  test MVVM-2
//
//  Created by Evgenii Kutasov on 05.07.2023.
//

import Foundation

protocol TableViewCellViewModelType: AnyObject {
    var fullName: String { get }
    var age: String { get }
}
