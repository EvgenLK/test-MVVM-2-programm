//
//  DetailViewController.swift
//  test MVVM-2
//
//  Created by Evgenii Kutasov on 06.07.2023.
//

import UIKit

class DetailViewController: UIViewController {
    
    var viewModel: DetailViewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let viewModel = viewModel else { return }
        self.textLabel.text = viewModel.description
        
    }
    var textLabel: UILabel = {
        let fullName = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height: 20))
        fullName.textColor = .black
        fullName.font = UIFont(name: "Arial", size: 20)
        return fullName
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(textLabel)
        
        viewModel?.age.bind { [unowned self] in
            guard let string = $0 else { return }
            self.textLabel.text = string
        }
        
        delay(delay: 5) { [unowned self] in
            self.viewModel?.age.value = "some new value"
        }
    }
    
    private func delay(delay: Double, closure: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + delay) {
            closure()
        }
    }
}
