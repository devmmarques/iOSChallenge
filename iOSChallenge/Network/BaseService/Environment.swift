import Foundation

struct Environment {
    
    private let configuration: Configuration
    private let apiKEY = "ae1b9a698aa242eabb4f1dd763371344"
    private let extensionIcon = "@2x.png"
    
    init(configuration: Configuration) {
        self.configuration = configuration
    }
    
    static var current: Environment {
        return Environment(configuration: .current())
    }
}

extension Environment {
    
    var baseURLString: String {
        switch configuration {
        case .development:
            return "https://newsapi.org/v2/"
        default:
            return "https://newsapi.org/v2/"
        }
    }
    
    var baseURLImageString: String {
        switch configuration {
        case .development:
            return "https://newsapi.org/v2/"
        default:
            return "https://newsapi.org/v2/"
        }
    }
    
    var baseApiKey: String {
        switch configuration {
        case .development:
            return self.apiKEY
        default:
            return self.apiKEY
        }
    }
    
    var baseExtensionIcon: String {
        switch configuration {
        case .development:
            return self.extensionIcon
        default:
            return self.extensionIcon
        }
    }
}
