//
//  Box.swift
//  test MVVM-2
//
//  Created by Evgenii Kutasov on 08.07.2023.
//

import Foundation

class Box<T> {
    typealias Listener = (T) -> ()
    
    var listener: Listener?
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    func bind(listener: @escaping Listener) {
        self.listener = listener
        listener(value)
    }
    
    init(value: T) {
        self.value = value
    }
}
