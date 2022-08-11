import Foundation

struct ArticleResponseModel: Codable {
    
    let author: String
    let title: String
    let description: String
    let url: String
    let urlToImage: String
    let publishedAt: String
}
