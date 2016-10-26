//
//  TemperatureFilter.swift
//  ImageEditor
//
//  Created by Martin Pilch on 19/10/16.
//  Copyright © 2016 Martin Pilch. All rights reserved.
//

import UIKit

public class TemperatureFilter {
    
    static public func temperature(value: Float) -> Filter {
        return { inputImage in
            guard let inputImage = inputImage else {
                return nil
            }
            
            let v = max(min(value, 1.0), -1.0)
            let temperature: Int = Int(4000 + 8000 * v)
            let tint: Int = 16000 - temperature
            let temperatureOffset: Float = 50.0
            let tintOffset: Float = 50.0
            
            let colorFilter = ColorAdjustmentFilters.TemperatureTint(temperature: temperature,
                                                                     temperatureOffset: temperatureOffset,
                                                                     tint: tint,
                                                                     tintOffset: tintOffset)
            
            let exposure = v / 2
            let exposureFilter = ColorAdjustmentFilters.ExposureAdjust(exposure: exposure)
            let filters = colorFilter |> exposureFilter
            return filters(inputImage)
        }
    }
}
