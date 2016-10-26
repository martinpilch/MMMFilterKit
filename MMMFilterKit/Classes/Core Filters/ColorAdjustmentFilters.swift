//
//  ColorAdjustmentFilters.swift
//  ImageEditor
//
//  Created by Martin Pilch on 14/10/16.
//  Copyright © 2016 Martin Pilch. All rights reserved.
//

import UIKit

public class ColorAdjustmentFilters {
    static public func ColorControls(saturation: Float, brightness: Float, contrast: Float) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBrightnessKey] = brightness as AnyObject
            inputParams[kCIInputSaturationKey] = saturation as AnyObject
            inputParams[kCIInputContrastKey] = contrast as AnyObject
            
            return CIFilter(name: FilterName.ColorControls.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func ColorMatrix(red: Float, green: Float, blue: Float, alpha: Float) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams["inputRVector"] = CIVector(x: CGFloat(red), y: 0, z: 0, w: 0) as AnyObject
            inputParams["inputGVector"] = CIVector(x: 0, y: CGFloat(green), z: 0, w: 0) as AnyObject
            inputParams["inputBVector"] = CIVector(x: 0, y: 0, z: CGFloat(blue), w: 0) as AnyObject
            inputParams["inputAVector"] = CIVector(x: 0, y: 0, z: 0, w: CGFloat(alpha)) as AnyObject
            
            return CIFilter(name: FilterName.ColorMatrix.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func Alpha(alpha: Float) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams["inputAVector"] = CIVector(x: 0, y: 0, z: 0, w: CGFloat(alpha)) as AnyObject
            
            return CIFilter(name: FilterName.ColorMatrix.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func ExposureAdjust(exposure: Float) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputEVKey] = exposure as AnyObject
            
            return CIFilter(name: FilterName.ExposureAdjust.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func Vibrance(vibrance: Float) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams["inputAmount"] = vibrance as AnyObject
            
            return CIFilter(name: FilterName.Vibrance.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func TemperatureTint(temperature: Int, temperatureOffset: Float, tint: Int, tintOffset: Float) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams["inputNeutral"] = CIVector(x: CGFloat(temperature), y: CGFloat(temperatureOffset)) as AnyObject
            inputParams["inputTargetNeutral"] = CIVector(x: CGFloat(tint), y: CGFloat(tintOffset)) as AnyObject
            
            return CIFilter(name: FilterName.TemperatureAndTint.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
}
