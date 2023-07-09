//
//  DetailViewMpdelType.swift
//  test MVVM-2
//
//  Created by Evgenii Kutasov on 06.07.2023.
//

import Foundation

protocol DetailViewModelType {
    var description: String { get }
    var age: Box<String?> { get }
}
