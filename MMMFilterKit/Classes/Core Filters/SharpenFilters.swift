//
//  SharpenFilters.swift
//  ImageEditor
//
//  Created by Martin Pilch on 14/10/16.
//  Copyright © 2016 Martin Pilch. All rights reserved.
//

import UIKit

public class SharpenFilters {
    static public func SharpenLuminance(sharpness: Float) -> Filter {
        return { inputImage in
            
            guard let inputImage = inputImage else {
                return nil
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputSharpnessKey] = sharpness as AnyObject
            return CIFilter(name: FilterName.SharpenLuminance.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func UnsharpMask(radius: Float, intensity: Float) -> Filter {
        return { inputImage in
            
            guard let inputImage = inputImage else {
                return nil
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputRadiusKey] = radius as AnyObject
            inputParams[kCIInputIntensityKey] = intensity as AnyObject
                
            return CIFilter(name: FilterName.UnsharpMask.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
}
