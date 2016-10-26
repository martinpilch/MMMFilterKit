//
//  FilmGrainFilter.swift
//  ImageEditor
//
//  Created by Martin Pilch on 14/10/16.
//  Copyright © 2016 Martin Pilch. All rights reserved.
//

import UIKit

public class FilmGrainFilter {
    
    static public func filmGrain(alpha: Float) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            let a = max(min(alpha, 1.0), 0.0)
            let randomFilter = GeneratorFilters.RandomGenerator()
            let contrastFilter = ColorAdjustmentFilters.ColorControls(saturation: 0, brightness: 0, contrast: 1)
            let colorFilter = ColorAdjustmentFilters.ColorMatrix(red: 0.2, green: 0.2, blue: 0.2, alpha: a)
            let filters = randomFilter |> contrastFilter |> colorFilter
            
            let blendFilter = BlendFilters.SoftLightBlendMode(backgroundImage: filters(inputImage))
            
            return blendFilter(inputImage)
        }
    }
}
