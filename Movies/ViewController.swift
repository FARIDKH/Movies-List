//
//  ViewController.swift
//  Movies
//
//  Created by Farid Qanbarov on 4/14/18.
//  Copyright © 2018 Farid Qanbarov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cellId = "Movie Cell"
    
    let movies = [
        "A" : [
            "Alma almaya benzer",
            "Alaadin",
            "Aliens"
        ],
        "B" : [
            "Big Bang Theory",
            "Basic Insticnt",
        ],
        "C" : [
            "Community"
        ],
        "F" : [
            "Dadas dadas oglu",
            "Dost dusmana bezer"
        ],
        "G" : [
            "Alma almaya benzer",
            "Alaadin",
            "Aliens"
        ],
        "H" : [
            "Big Bang Theory",
            "Basic Insticnt",
        ],
        "Z" : [
            "Community"
        ],
        "X" : [
            "Dadas dadas oglu",
            "Dost dusmana bezer"
        ],
        

    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        moviesTableView.dataSource = self
        moviesTableView.delegate = self
        moviesTableView.register(MoviesTableViewCell.self, forCellReuseIdentifier: cellId)
        let barHeight = UIApplication.shared.statusBarFrame.height
        moviesTableView.frame = CGRect(x: 0, y: barHeight, width: view.frame.width, height: view.frame.height)
        let keys = Array(movies.keys).sorted(by: <)
        print(keys)
        view.addSubview(moviesTableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private var moviesTableView : UITableView = {
        let tableView = UITableView()
        tableView.separatorStyle = .none
        return tableView
    }()
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return Array(movies.keys).sorted(by: <)
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let keys = Array(movies.keys).sorted(by: <)
        return keys[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let keys = Array(movies.keys).sorted(by: <)
        if let movies = movies[keys[section]] {
            return movies.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        let keys = Array(movies.keys).sorted(by: <)
        if let movies = movies[keys[indexPath.section]] {
            cell.textLabel?.text = movies[indexPath.row]
        }
        return cell
    }
    


}

