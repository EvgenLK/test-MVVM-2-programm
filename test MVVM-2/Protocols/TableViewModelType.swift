//
//  TableViewModelType.swift
//  test MVVM-2
//
//  Created by Evgenii Kutasov on 05.07.2023.
//

import Foundation


protocol TableViewViewModelType {
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?
    
    func viewModelForSelectedRow() -> DetailViewModelType?
    func selectedRow(atIndexPath indexPath: IndexPath)
    
}
