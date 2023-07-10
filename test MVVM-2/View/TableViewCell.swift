//
//  TableViewCell.swift
//  test MVVM-2
//
//  Created by Evgenii Kutasov on 05.07.2023.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(fullName)
        contentView.addSubview(age)
    }
    
    weak var viewModel: TableViewCellViewModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else { return }
            fullName.text = viewModel.fullName
            age.text = viewModel.age
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let fullName: UILabel = {
        let fullName = UILabel(frame: CGRect(x: 5, y: 5, width: 200, height: 20))
        fullName.textColor = .black
        fullName.font = UIFont(name: "Arial", size: 20)
        return fullName
    }()
    
    let age: UILabel = {
        let age = UILabel(frame: CGRect(x: 350, y: 5, width: 50, height: 20))
        age.textColor = .black
        age.font = UIFont(name: "Arial", size: 20)
        return age
    }()
}
