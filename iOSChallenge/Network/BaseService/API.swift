import Foundation

struct API {
    
    enum Article {
        case fetchArticle
        
        var value: String {
            let baseURL = Environment.current.baseURLString
            
            switch self {
            case .fetchArticle:
                return "\(baseURL)/"
            }
        }
    }
    
}
