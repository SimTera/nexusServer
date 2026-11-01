//
//  Organization.swift
//  nexusServer
//
//  Created by Victor Munera on 01/11/2026.
//

import Fluent
import struct Foundation.UUID

final class Organization: Model, @unchecked Sendable {
    static let schema = "organizations"
    
    @ID(key: .id)
    var id: IDValue?
    
    @Field(key: "name")
    var name: String
    
    @Parent(key: "owner_id")
    var owner: User
    
    @Field(key: "is_active")
    var active: Bool
    
    
}
