//
//  ViewController.swift
//  ImageEditor
//
//  Created by Martin Pilch on 13/10/16.
//  Copyright © 2016 Martin Pilch. All rights reserved.
//

import UIKit
import MMMFilterKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView?
    @IBOutlet weak var tableView: UITableView?
    
    var brightness: Float = 0.0
    var saturation: Float = 1.0
    var contrast: Float = 1.0
    var exposure: Float = 0.0
    var vibrance: Float = 0.0
    var sharpen: Float = 0.0
    var fade: Float = 0.0
    var filmGrain: Float = 0.0
    var temperature: Float = 0.5
    
    let image = UIImage(named: "photo_1")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView?.image = image
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

extension ViewController: TableViewCellDelegate {
    func sliderValueChanged(cell: TableViewCell) {
        guard let value = cell.slider?.value else {
            return
        }
        
        guard let indexPath = tableView?.indexPath(for: cell) else {
            return
        }
        if indexPath.row == 0 {
            brightness = value
        }
        else if indexPath.row == 1 {
            saturation = value
        }
        else if indexPath.row == 2 {
            contrast = value
        }
        else if indexPath.row == 3 {
            exposure = value
        }
        else if indexPath.row == 4 {
            vibrance = value
        }
        else if indexPath.row == 5 {
            sharpen = value
        }
        else if indexPath.row == 6 {
            fade = value
        }
        else if indexPath.row == 7 {
            filmGrain = value
        }
        else if indexPath.row == 8 {
            temperature = value
        }
        
        let filterColorControls = ColorAdjustmentFilters.ColorControls(saturation: saturation, brightness: brightness, contrast: contrast)
        let filterExposure = ColorAdjustmentFilters.ExposureAdjust(exposure: exposure)
        let filterVibrance = ColorAdjustmentFilters.Vibrance(vibrance: vibrance)
        let filterSharpen = SharpenFilters.SharpenLuminance(sharpness: sharpen)
        let filterFade = FadeFilter.fade(alpha: fade)
        let filterFilmGrain = FilmGrainFilter.filmGrain(alpha: filmGrain)
        let temperatureFilter = TemperatureFilter.temperature(value: temperature)
        
        let filters: [Filter] = [filterColorControls, filterExposure, filterVibrance,
                                 filterSharpen, filterFade, filterFilmGrain, temperatureFilter]
        ImageProcessing.sharedInstance.processImage(image: image,
                                                    filters: filters) { [weak self] (outputImage) in
                                                        self?.imageView?.image = outputImage
        }
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        if indexPath.row == 0 {
            cell.infoLabel?.text = "Brightness"
            cell.slider?.minimumValue = -1
            cell.slider?.maximumValue = 1
            cell.slider?.value = brightness
        }
        else if indexPath.row == 1 {
            cell.infoLabel?.text = "Saturation"
            cell.slider?.minimumValue = 0
            cell.slider?.maximumValue = 2
            cell.slider?.value = saturation
        }
        else if indexPath.row == 2 {
            cell.infoLabel?.text = "Contrast"
            cell.slider?.minimumValue = 0
            cell.slider?.maximumValue = 2
            cell.slider?.value = contrast
        }
        else if indexPath.row == 3 {
            cell.infoLabel?.text = "Exposure"
            cell.slider?.minimumValue = -1
            cell.slider?.maximumValue = 1
            cell.slider?.value = exposure
        }
        else if indexPath.row == 4 {
            cell.infoLabel?.text = "Vibrance"
            cell.slider?.minimumValue = -2
            cell.slider?.maximumValue = 2
            cell.slider?.value = vibrance
        }
        else if indexPath.row == 5 {
            cell.infoLabel?.text = "Sharpen"
            cell.slider?.minimumValue = 0
            cell.slider?.maximumValue = 2
            cell.slider?.value = sharpen
        }
        else if indexPath.row == 6 {
            cell.infoLabel?.text = "Fade"
            cell.slider?.minimumValue = 0
            cell.slider?.maximumValue = 1
            cell.slider?.value = fade
        }
        else if indexPath.row == 7 {
            cell.infoLabel?.text = "Film Grain"
            cell.slider?.minimumValue = 0
            cell.slider?.maximumValue = 1
            cell.slider?.value = filmGrain
        }
        else if indexPath.row == 8 {
            cell.infoLabel?.text = "Temperature"
            cell.slider?.minimumValue = 0
            cell.slider?.maximumValue = 1
            cell.slider?.value = temperature
        }
        
        cell.delegate = self
        return cell
    }
}
