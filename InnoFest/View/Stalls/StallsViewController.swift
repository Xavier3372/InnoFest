//
//  ViewController.swift
//  CrudApp
//
//  Created by Ryan The on 1/8/20.
//  Copyright © 2020 Ryan The. All rights reserved.
//

import UIKit

class StallsViewController: UIViewController {
	
	lazy var tableView = StallsTableView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: UIScreen.main.bounds.size), style: .plain)
	
	lazy var searchBar = UISearchBar()
	
	override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
		super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.navigationController?.navigationBar.prefersLargeTitles = true
		self.title = "Order"
		self.view.backgroundColor = .systemBackground
		self.navigationItem.searchController = UISearchController()
		self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "cart"), style: .plain, target: self, action: #selector(presentCartViewController))
		self.view.addSubview(tableView)
		tableView.parent = self
	}
	
	func presentView() {
		let newVC = UIViewController()
		newVC.view.backgroundColor = .systemBackground
		self.navigationController?.pushViewController(newVC, animated: true)
	}
	
	@objc func presentCartViewController() {
		let cartViewController = UIViewController()
		let cartNavigationController = UINavigationController(rootViewController: cartViewController)
		cartViewController.view.backgroundColor = .systemBackground
		cartViewController.title = "Cart"
		self.navigationController?.present(cartNavigationController, animated: true, completion: nil)
	}
}

