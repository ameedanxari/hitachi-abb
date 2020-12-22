//
//  ViewController.swift
//  hitachi-abb
//
//  Created by macintosh on 2020-12-21.
//

import UIKit

class ViewController: UITableViewController {
    var searchResults: [Result] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    func setupView() {
        tableView.keyboardDismissMode = .onDrag
    }
    
    //MARK:- TableView Functions
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchResults.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ItunesMediaTVCell") as? ItunesMediaTVCell else {
            fatalError("Cell definition not found")
        }
        cell.vm = ItunesMediaTVCellVM(data: searchResults[indexPath.row])
        return cell
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if Global.DEBUG {
            print("searchBarSearchButtonClicked")
        }
        
        searchBar.endEditing(true)
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        if Global.DEBUG {
            print("searchBarTextDidEndEditing")
        }
        
        self.searchResults = ServerManager.shared.getSearchResults(searchBar.text ?? "") { [weak self] (results, error) in
            //manage userdefaults here
            
            if let strongSelf = self {
                if let error = error {
                    UtilManager.shared.showAlert(msg: error.localizedDescription)
                }
                
                if let results = results {
                    strongSelf.searchResults = results
                }
                
                DispatchQueue.main.async {
                    strongSelf.tableView.reloadData()
                }
            }
        }
        
        self.tableView.reloadData()
    }
}

