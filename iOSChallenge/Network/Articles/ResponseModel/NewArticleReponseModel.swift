import Foundation

struct NewArticleReponseModel: Codable {
    
    let status: String
    let totalResults: Int
    let articles: [ArticleResponseModel]?
}
