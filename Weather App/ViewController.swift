//
//  ViewController.swift
//  Weather App
//
//  Created by Rafael Lima on 18/02/25.
//

import UIKit

class ViewController: UIViewController {

    private lazy var customView: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
 
    private func setUpViews() {
        view.backgroundColor = .red
        
        view.addSubview(customView)
        
        setConstrant()
        setHierarchy()
    }
    
    private func setHierarchy() {
        view.addSubview(customView)
    }
    
    private func setConstrant() {
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            customView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            customView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100)
        ])
    }
    
}
