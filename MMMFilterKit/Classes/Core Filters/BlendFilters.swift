//
//  BlendFilters.swift
//  ImageEditor
//
//  Created by Martin Pilch on 14/10/16.
//  Copyright © 2016 Martin Pilch. All rights reserved.
//

import UIKit

public class BlendFilters {
    static public func AdditionCompositing(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.AdditionCompositing.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func ColorBlendMode(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.ColorBlendMode.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func ColorBurnBlendMode(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.ColorBurnBlendMode.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func ColorDodgeBlendMode(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.ColorDodgeBlendMode.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func DarkenBlendMode(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.DarkenBlendMode.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func DifferenceBlendMode(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.DifferenceBlendMode.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func DivideBlendMode(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.DivideBlendMode.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func ExclusionBlendMode(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.ExclusionBlendMode.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func HardLightBlendMode(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.HardLightBlendMode.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func HueBlendMode(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.HueBlendMode.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func LightenBlendMode(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.LightenBlendMode.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func LinearBurnBlendMode(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.LinearBurnBlendMode.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func LinearDodgeBlendMode(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.LinearDodgeBlendMode.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func LuminosityBlendMode(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.LuminosityBlendMode.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func MaximumCompositing(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.MaximumCompositing.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func MinimumCompositing(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.MinimumCompositing.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func MultiplyBlendMode(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.MultiplyBlendMode.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func MultiplyCompositing(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.MultiplyCompositing.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func OverlayBlendMode(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.OverlayBlendMode.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func PinLightBlendMode(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.PinLightBlendMode.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func SaturationBlendMode(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.SaturationBlendMode.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func ScreenBlendMode(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.ScreenBlendMode.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func SoftLightBlendMode(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.SoftLightBlendMode.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func SourceAtopCompositing(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.SourceAtopCompositing.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func SourceInCompositing(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.SourceInCompositing.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func SourceOutCompositing(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.SourceOutCompositing.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func SourceOverCompositing(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.SourceOverCompositing.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
    
    static public func SubtractBlendMode(backgroundImage: CIImage?) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            guard let backgroundImage = backgroundImage else {
                return inputImage
            }
            
            var inputParams: [String: AnyObject] = [kCIInputImageKey: inputImage]
            inputParams[kCIInputBackgroundImageKey] = backgroundImage as AnyObject
            return CIFilter(name: FilterName.SubtractBlendMode.rawValue, withInputParameters: inputParams)?.outputImage
        }
    }
}
