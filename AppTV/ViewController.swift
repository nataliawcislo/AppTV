//
//  ViewController.swift
//  AppTV
//
//  Created by Natalka on 7/6/21.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   // var tab = ["k", "l", "o", "p", "w"]
    var currentMovie = [Show]()
    let loadData = LoadData()
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData.fetchPostData{
            data in
            self.currentMovie = data
            self.tableView.reloadData()
        }
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentMovie.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = self.currentMovie[indexPath.row].name
        return cell
    }
}
