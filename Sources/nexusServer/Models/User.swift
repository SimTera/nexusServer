//
//  User.swift
//  nexusServer
//
//  Created by Victor Munera on 01/11/2026.
//

import Fluent

final class User: Model, @unchecked Sendable {
    static let schema = "users"
    
    @ID(key: .id)
    var id: IDValue?
    
    @Parent(key: "organization_id")
    var organization: Organization
    
    @Field(key: "name")
    var name: String
    
    @Field(key: "email")
    var email: String
    
    @Field(key: "password_hash")
    var passwordHash: String
    
    @Parent(key: "role_id")
    var role: Role
    
    @Field(key: "is_active")
    var isActive: Bool
    
}
