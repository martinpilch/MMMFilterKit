//
//  FadeFilter.swift
//  ImageEditor
//
//  Created by Martin Pilch on 14/10/16.
//  Copyright © 2016 Martin Pilch. All rights reserved.
//

import UIKit

public class FadeFilter {
    static public func fade(alpha: Float) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            let a = max(min(alpha, 1.0), 0.0)
            let color = CIColor(color: UIColor(white:0.83, alpha:CGFloat(a)))
            
            let colorFilter = GeneratorFilters.ConstantColorGenerator(color: color)
            let blendFilter = BlendFilters.LightenBlendMode(backgroundImage: colorFilter(inputImage)?.cropping(to: inputImage.extent))
            
            return blendFilter(inputImage)
        }
    }
}
