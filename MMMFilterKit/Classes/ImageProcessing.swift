//
//  ImageProcessing.swift
//  ImageEditor
//
//  Created by Martin Pilch on 13/10/16.
//  Copyright © 2016 Martin Pilch. All rights reserved.
//

import UIKit

public class ImageProcessing: NSObject {

    static public let sharedInstance = ImageProcessing()
    
    fileprivate let openGLContext: EAGLContext
    fileprivate let context: CIContext
    
    override public  init () {
        openGLContext = EAGLContext(api: .openGLES2)
        context = CIContext(eaglContext: openGLContext)
    }
    
    public func processImage(image: UIImage, filters: [Filter]?, completion: @escaping (UIImage) -> ()) {
        guard let filters = filters, filters.count > 0 else {
            completion(image)
            return
        }
        
        guard let cgImage = image.cgImage else {
            completion(image)
            return
        }
        
        guard let first = filters.first else {
            completion(image)
            return
        }
        
        DispatchQueue.global(qos: .userInteractive).async { [weak self] in
            if let strongself = self {
                let tail = Array(filters.dropFirst())
                let filtersArray = tail.reduce(first, |>)
                let inputCiImage = CIImage(cgImage: cgImage)
                
                if let outputCiImage = filtersArray(inputCiImage),
                    let outputCgImage = strongself.context.createCGImage(outputCiImage, from: inputCiImage.extent) {
                    let result = UIImage(cgImage: outputCgImage)
                    DispatchQueue.main.async {
                        completion(result)
                    }
                }
                else {
                    DispatchQueue.main.async {
                        completion(image)
                    }
                }
            }
        }
    }
}
