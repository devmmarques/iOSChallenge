import UIKit

final class ArticleListWireframe: ArticleListWireframeProtocol {
    
    weak var view: ArticleListViewController!
    
    func setupModule() -> ArticleListViewController {
        let view = ArticleListViewController()
        let interactor = ArticleListInteractor()
        let presenter = ArticleListPresenter()
        
        presenter.wireframe = self
        presenter.view = view
        presenter.interactor = interactor

        view.presenter = presenter
        interactor.presenter = presenter

        self.view = view
        return view
    }
    
}
