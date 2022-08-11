import Foundation
import UIKit

final class ArticleListViewController: UIViewController {
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(NewsViewCell.self)
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 50.0
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    // MARK: Properties
    var presenter: ArticleListPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.inicialize()
    }
}

extension ArticleListViewController: UITableViewDelegate {
    
}

extension ArticleListViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as NewsViewCell
        return cell
    }
}

extension ArticleListViewController: CodeViewProtocol {
    func buildViewHierarchy() {
        self.view.addSubview(self.tableView)
    }
    
    func setupConstraints() {
        self.tableView
            .topAnchor(equalTo: self.view.topAnchor)
            .leadingAnchor(equalTo: self.view.leadingAnchor)
            .trailingAnchor(equalTo: self.view.trailingAnchor)
            .bottomAnchor(equalTo: self.view.bottomAnchor)
    }
    
    func setupViews() {
     
    }
}

extension ArticleListViewController: ArticleListViewProtocol {
    func reloadData() {
        
    }
}
