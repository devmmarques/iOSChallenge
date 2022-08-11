import Foundation

final class ArticleListInteractor: ArticleListInputInteractorProtocol {

    weak var presenter: ArticleListOutPutInteractorProtocol?
    private let service: ArticleServiceProtocol
    
    init(service: ArticleServiceProtocol = ArticleService()) {
        self.service = service
    }
}
