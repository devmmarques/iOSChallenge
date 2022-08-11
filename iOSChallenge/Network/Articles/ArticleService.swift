import Foundation

protocol ArticleServiceProtocol {
    typealias ArticleResult = Result<NewArticleReponseModel, WebServiceError>
    func fetchArticle(parameters: [String: Any], completion: @escaping (ArticleResult) -> Void)
}

final class ArticleService: NSObject, ArticleServiceProtocol {
    
    let service: Webservice

    init(service: Webservice = BaseWebservice()) {
        self.service = service
    }
    
    func fetchArticle(parameters: [String: Any], completion: @escaping (ArticleResult) -> Void) {
        self.service.request(urlString: API.Article.fetchArticle.value, method: .get,
                             parameters: parameters) { (result: ArticleResult) in
            switch result {
            case let .success(response):
                completion(.success(response))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }
}
