//
//  DetailViewController.swift
//  UITestPractice
//
//  Created by Wataru Miyakoshi on 2022/04/09.
//

import UIKit
import SwiftUI

final class TopViewController:UIViewController {
    private var tableView:UITableView! {
        didSet {
            tableView.register(TopTableViewCell.self, forCellReuseIdentifier: TopTableViewCell.identifier)
        }
    }
    
    private var itemList = [
        "item 1",
        "item 2",
        "item 3",
        "item 4",
        "item 5",
        "item 6",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        
        self.navigationItem.title = "Top"
        
        tableView = UITableView()
        tableView.dataSource = self
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
        ])
    }
}

// MARK: - DataSource
extension TopViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TopTableViewCell.identifier, for: indexPath) as? TopTableViewCell
        else { return UITableViewCell() }
        
        let item = itemList[indexPath.row]
        cell.configure(title: item)
                
        return cell
    }
}

struct TopViewController_Previews: PreviewProvider {
    static var previews: some View {
        ViewControllerPreview {
            TopViewController()
        }
        .previewDevice("iPhone 13 mini")
    }
}

