//
//  ViewController.swift
//  Programatically
//
//  Created by Limei  Chen on 10/18/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
     let text = "Olivia"
    let searchBar = UISearchBar()
    let tableView = UITableView()
//    private lazy var searchBar = UISearchBar()
//    private lazy var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSearchBar()
        setupTableView()
        // Do any additional setup after loading the view.
      
    }
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    func setupTableView(){
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo:searchBar.bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo:view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo:view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo:view.bottomAnchor).isActive = true
        tableView.backgroundColor = .blue
    }
    func setupSearchBar() {
        view.addSubview(searchBar)
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.topAnchor.constraint(equalTo:view.topAnchor).isActive = true
        searchBar.leftAnchor.constraint(equalTo:view.leftAnchor).isActive = true
        searchBar.rightAnchor.constraint(equalTo:view.rightAnchor).isActive = true
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
}
