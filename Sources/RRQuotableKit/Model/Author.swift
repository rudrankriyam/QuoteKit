//
//  Author.swift
//  Author
//
//  Created by Rudrank Riyam on 28/08/21.
//

import Foundation

public struct Author: Codable, Identifiable {
    public var id: String
    public var link: String
    public var bio: String
    public var description: String
    public var name: String
    public var quoteCount: Int
    public var slug: String
    public var dateAdded: String
    public var dateModified: String
    public var quotes: [Quote]?
    
    public init(link: String, bio: String, description: String, id: String, name: String, quoteCount: Int, slug: String, dateAdded: String, dateModified: String, quotes: [Quote]?) {
        self.link = link
        self.bio = bio
        self.description = description
        self.id = id
        self.name = name
        self.quoteCount = quoteCount
        self.slug = slug
        self.dateAdded = dateAdded
        self.dateModified = dateModified
        self.quotes = quotes
    }
    
    enum CodingKeys: String, CodingKey {
        case link, bio, description
        case id = "_id"
        case name, quoteCount, slug
        case dateAdded, dateModified
        case quotes
    }
}

extension Author: Equatable {
    public static func ==(lhs: Author, rhs: Author) -> Bool {
        return lhs.id == rhs.id
    }
}