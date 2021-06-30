//
//  ViewController.swift
//  Stocks
//
//  Created by María Fernanda Bracho Salazar on 25.06.21.
//

import UIKit

class ViewController: UIViewController {
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(CustomTableViewCell.self,
                           forCellReuseIdentifier: CustomTableViewCell.reuseIdentifier)
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    @IBAction func buttonTapped(_ sender: UIBarButtonItem) {}
    
}

// MARK: - Table View Data Source

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.reuseIdentifier, for: indexPath)
        cell.textLabel?.text = "Stock Name"
        return cell
    }
    
    // MARK: - Networking
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
                let url: String = "https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=MSFT&interval=1min&apikey=N5OVA149PYCDBVX4"
        
                URLSession.shared.dataTask(with: NSURL(string: url) as! URL) { data, response, error in
                    print("this is the data")
                    print(String(data: data!, encoding: String.Encoding.utf8) as String?)
                    print("=========================")
                    print("this is the response")
                    print(response)
                }.resume()
        
    }
}
