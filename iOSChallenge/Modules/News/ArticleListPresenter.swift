import Foundation

final class ArticleListPresenter: ArticleListPresenterProtocol {
    
    var wireframe: ArticleListWireframeProtocol?
    weak var view: ArticleListViewProtocol?
    var interactor: ArticleListInputInteractorProtocol?
}

extension ArticleListPresenter: ArticleListOutPutInteractorProtocol {
    
}
