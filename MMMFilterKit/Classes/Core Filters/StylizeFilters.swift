//
//  StylizeFilters.swift
//  ImageEditor
//
//  Created by Martin Pilch on 14/10/16.
//  Copyright © 2016 Martin Pilch. All rights reserved.
//

import UIKit

public class StylizeFilters {
    static public func HighlightsShadowsAdjust(highlights: Float, shadows: Float) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams["inputHighlightAmount"] = highlights as AnyObject
            inputParams["inputShadowAmount"] = shadows as AnyObject
            
            return CIFilter(name: FilterName.HighlightShadowAdjust.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
}
