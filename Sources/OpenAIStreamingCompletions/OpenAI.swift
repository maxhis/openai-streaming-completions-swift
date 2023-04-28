import Foundation

public struct OpenAIAPI {
    var apiKey: String
    var orgId: String?
    var host: String

    public init(apiKey: String, orgId: String? = nil, host: String = "api.openai.com") {
        self.apiKey = apiKey
        self.orgId = orgId
        self.host = host
    }
}

extension OpenAIAPI {
    enum Errors: Error {
        case noChoices
        case invalidResponse(String)
        case noApiKey
    }
}

