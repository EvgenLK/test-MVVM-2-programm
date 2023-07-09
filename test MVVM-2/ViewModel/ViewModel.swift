//
//  ViewModel.swift
//  test MVVM-2
//
//  Created by Evgenii Kutasov on 05.07.2023.
//

import Foundation

class ViewModel: TableViewViewModelType {
    
    private var selectedIndexPath: IndexPath?
 
    var profile = [
        Profile(name: "John", secondName: "Wick", age: 33),
        Profile(name: "Mark", secondName: "Con", age: 30),
        Profile(name: "Aran", secondName: "Smitch", age: 40),
    ]
    
    func numberOfRows() -> Int {
        return profile.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profile[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else { return nil }
        return DetailViewModel.init(profile: profile[selectedIndexPath.row])
    }
    
    func selectedRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
    
    func configureDetailViewController(_ detailVC: DetailViewController, forRowAt indexPath: IndexPath) {
        guard let cellViewModel = cellViewModel(forIndexPath: indexPath) else { return }
        
        detailVC.textLabel.text = cellViewModel.fullName
    }

}

