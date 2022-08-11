import Foundation
import UIKit

final class NewsViewCell: UITableViewCell {
    
    private lazy var containerMainView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var imageAuthor: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.numberOfLines = 0
        label.text = "Teste"
        return label
    }()
    
    private lazy var nameAuthorLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14.0)
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.inicialize()
    }
      
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}

extension NewsViewCell: CodeViewProtocol {
    func buildViewHierarchy() {
        self.addSubview(self.containerMainView)
        self.containerMainView.addSubview(self.imageAuthor)
        self.containerMainView.addSubview(self.titleLabel)
    }
    
    func setupConstraints() {
        
        self.containerMainView
            .topAnchor(equalTo: self.topAnchor, constant: 12.0)
            .leadingAnchor(equalTo: self.leadingAnchor, constant: 12.0)
            .trailingAnchor(equalTo: self.trailingAnchor, constant: -12.0)
            .bottomAnchor(equalTo: self.bottomAnchor, constant: -12.0)
        
        self.titleLabel
            .topAnchor(equalTo: self.containerMainView.topAnchor, constant: 16.0)
            .leadingAnchor(equalTo: self.containerMainView.leadingAnchor, constant: 16)
            .trailingAnchor(equalTo: self.containerMainView.trailingAnchor, constant: -12.0)
        
        self.imageAuthor
            .topAnchor(equalTo: self.titleLabel.bottomAnchor, constant: 12.0)
            .leadingAnchor(equalTo: self.containerMainView.leadingAnchor, constant: 16.0)
            .heightAnchor(equalTo: 24.0).widthAnchor(equalTo: 24.0)
    }
    
    func setupViews() {
        
    }
    
    
}
