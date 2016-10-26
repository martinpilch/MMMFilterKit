//
//  GeneratorFilters.swift
//  ImageEditor
//
//  Created by Martin Pilch on 14/10/16.
//  Copyright © 2016 Martin Pilch. All rights reserved.
//

import UIKit

public class GeneratorFilters {
    static public func ConstantColorGenerator(color: CIColor) -> Filter {
        return { inputImage in
            var inputParams: [String: AnyObject] = [:]
            inputParams[kCIInputColorKey] = color as AnyObject
            return CIFilter(name: FilterName.ConstantColorGenerator.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func RandomGenerator() -> Filter {
        return { inputImage in
            let inputParams: [String: AnyObject] = [:]
            return CIFilter(name: FilterName.RandomGenerator.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
}
