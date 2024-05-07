//
//  SectionType.swift
//  SOLID_MultipleType_TableViewCell
//
//  Created by ZEUS on 7/5/24.
//


//Create enum for handle different cell type with associated value
//and how many section do you want in table view its defined by sectionType

import Foundation

enum SectionType{
    case product([Product])
    case ad([Ad])
}
