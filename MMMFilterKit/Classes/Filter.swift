//
//  Filter.swift
//  ImageEditor
//
//  Created by Martin Pilch on 25/10/16.
//  Copyright © 2016 Martin Pilch. All rights reserved.
//

import UIKit

public typealias Filter = (CIImage?) -> CIImage?

infix operator |> : AdditionPrecedence

public func |> (filter1: @escaping Filter, filter2: @escaping Filter) -> Filter {
    return { image in filter1(image).flatMap{ filter2($0) } }
}

public enum FilterName: String {
    
    // Blur
    /** @name Blur filters */
    /** */
    case GaussianBlur = "CIGaussianBlur"
    /** */
    case MotionBlur = "CIMotionBlur"
    /** */
    case ZoomBlur = "CIZoomBlur"
    
    // ColorAdjustment
    /** */
    case ColorControls = "CIColorControls"
    /** */
    case ColorMatrix = "CIColorMatrix"
    /** */
    case ExposureAdjust = "CIExposureAdjust"
    /** */
    case GammaAdjust = "CIGammaAdjust"
    /** */
    case HueAdjust = "CIHueAdjust"
    /** */
    case LinearToSRGBToneCurve = "CILinearToSRGBToneCurve"
    /** */
    case SRGBToneCurveToLinear = "CISRGBToneCurveToLinear"
    /** */
    case TemperatureAndTint = "CITemperatureAndTint"
    /** */
    case ToneCurve = "CIToneCurve"
    /** */
    case Vibrance = "CIVibrance"
    /** */
    case WhitePointAdjust = "CIWhitePointAdjust"
    
    //ColorEffect
    /** */
    case ColorClamp = "CIColorClamp"
    /** */
    case ColorCrossPolynomial = "CIColorCrossPolynomial"
    /** */
    case ColorCube = "CIColorCube"
    /** */
    case ColorCubeWithColorSpace = "CIColorCubeWithColorSpace"
    /** */
    case ColorInvert = "CIColorInvert"
    /** */
    case ColorMap = "CIColorMap"
    /** */
    case ColorMonochrome = "CIColorMonochrome"
    /** */
    case ColorPolynomial = "CIColorPolynomial"
    /** */
    case ColorPosterize = "CIColorPosterize"
    /** */
    case FalseColor = "CIFalseColor"
    /** */
    case MaskToAlpha = "CIMaskToAlpha"
    /** */
    case MaximumComponent = "CIMaximumComponent"
    /** */
    case MinimumComponent = "CIMinimumComponent"
    /** */
    case PhotoEffectChrome = "CIPhotoEffectChrome"
    /** */
    case PhotoEffectFade = "CIPhotoEffectFade"
    /** */
    case PhotoEffectInstant = "CIPhotoEffectInstant"
    /** */
    case PhotoEffectMono = "CIPhotoEffectMono"
    /** */
    case PhotoEffectNoir = "CIPhotoEffectNoir"
    /** */
    case PhotoEffectProcess = "CIPhotoEffectProcess"
    /** */
    case PhotoEffectTonal = "CIPhotoEffectTonal"
    /** */
    case PhotoEffectTransfer = "CIPhotoEffectTransfer"
    /** */
    case SepiaTone = "CISepiaTone"
    /** */
    case Vignette = "CIVignette"
    /** */
    case VignetteEffect = "CIVignetteEffect"
    
    //CompositeOperation
    /** */
    case AdditionCompositing = "CIAdditionCompositing"
    /** */
    case ColorBlendMode = "CIColorBlendMode"
    /** */
    case ColorBurnBlendMode = "CIColorBurnBlendMode"
    /** */
    case ColorDodgeBlendMode = "CIColorDodgeBlendMode"
    /** */
    case DarkenBlendMode = "CIDarkenBlendMode"
    /** */
    case DifferenceBlendMode = "CIDifferenceBlendMode"
    /** */
    case DivideBlendMode = "CIDivideBlendMode"
    /** */
    case ExclusionBlendMode = "CIExclusionBlendMode"
    /** */
    case HardLightBlendMode = "CIHardLightBlendMode"
    /** */
    case HueBlendMode = "CIHueBlendMode"
    /** */
    case LightenBlendMode = "CILightenBlendMode"
    /** */
    case LinearBurnBlendMode = "CILinearBurnBlendMode"
    /** */
    case LinearDodgeBlendMode = "CILinearDodgeBlendMode"
    /** */
    case LuminosityBlendMode = "CILuminosityBlendMode"
    /** */
    case MaximumCompositing = "CIMaximumCompositing"
    /** */
    case MinimumCompositing = "CIMinimumCompositing"
    /** */
    case MultiplyBlendMode = "CIMultiplyBlendMode"
    /** */
    case MultiplyCompositing = "CIMultiplyCompositing"
    /** */
    case OverlayBlendMode = "CIOverlayBlendMode"
    /** */
    case PinLightBlendMode = "CIPinLightBlendMode"
    /** */
    case SaturationBlendMode = "CISaturationBlendMode"
    /** */
    case ScreenBlendMode = "CIScreenBlendMode"
    /** */
    case SoftLightBlendMode = "CISoftLightBlendMode"
    /** */
    case SourceAtopCompositing = "CISourceAtopCompositing"
    /** */
    case SourceInCompositing = "CISourceInCompositing"
    /** */
    case SourceOutCompositing = "CISourceOutCompositing"
    /** */
    case SourceOverCompositing = "CISourceOverCompositing"
    /** */
    case SubtractBlendMode = "CISubtractBlendMode"
    
    //DistortionEffect
    /** */
    case BumpDistortion = "CIBumpDistortion"
    /** */
    case BumpDistortionLinear = "CIBumpDistortionLinear"
    /** */
    case CircleSplashDistortion = "CICircleSplashDistortion"
    /** */
    case GlassDistortion = "CIGlassDistortion"
    /** */
    case HoleDistortion = "CIHoleDistortion"
    /** */
    case LightTunnel = "CILightTunnel"
    /** */
    case PinchDistortion = "CIPinchDistortion"
    /** */
    case TwirlDistortion = "CITwirlDistortion"
    /** */
    case VortexDistortion  = "CIVortexDistortion"
    
    //Generators
    /** */
    case AztecCodeGenerator = "CIAztecCodeGenerator"
    /** */
    case CheckerboardGenerator = "CICheckerboardGenerator"
    /** */
    case Code128BarcodeGenerator = "CICode128BarcodeGenerator"
    /** */
    case ConstantColorGenerator = "CIConstantColorGenerator"
    /** */
    case QRCodeGenerator = "CIQRCodeGenerator"
    /** */
    case RandomGenerator = "CIRandomGenerator"
    /** */
    case StarShineGenerator = "CIStarShineGenerator"
    /** */
    case StripesGenerator = "CIStripesGenerator"
    
    //GeometryAdjustment
    /** */
    case AffineTransform = "CIAffineTransform"
    /** */
    case Crop = "CICrop"
    /** */
    case LanczosScaleTransform = "CILanczosScaleTransform"
    /** */
    case PerspectiveCorrection = "CIPerspectiveCorrection"
    /** */
    case PerspectiveTile = "CIPerspectiveTile"
    /** */
    case PerspectiveTransform = "CIPerspectiveTransform"
    /** */
    case PerspectiveTransformWithExtent = "CIPerspectiveTransformWithExtent"
    /** */
    case StraightenFilter = "CIStraightenFilter"
    
    //Gradients
    /** */
    case GaussianGradient = "CIGaussianGradient"
    /** */
    case LinearGradient = "CILinearGradient"
    /** */
    case RadialGradient = "CIRadialGradient"
    /** */
    case SmoothLinearGradient = "CISmoothLinearGradient"
    
    //HalftoneEffect
    /** */
    case CircularScreen = "CICircularScreen"
    /** */
    case DotScreen = "CIDotScreen"
    /** */
    case HatchedScreen = "CIHatchedScreen"
    /** */
    case LineScreen = "CILineScreen"
    
    //Reduction
    /** */
    case AreaHistogram = "CIAreaHistogram"
    /** */
    case HistogramDisplayFilter = "CIHistogramDisplayFilter"
    
    //Sharpen
    /** */
    case SharpenLuminance = "CISharpenLuminance"
    /** */
    case UnsharpMask = "CIUnsharpMask"
    
    //Stylize
    /** */
    case BlendWithAlphaMask = "CIBlendWithAlphaMask"
    /** */
    case BlendWithMask = "CIBlendWithMask"
    /** */
    case Bloom = "CIBloom"
    /** */
    case Convolution3X3 = "CIConvolution3X3"
    /** */
    case Convolution5X5 = "CIConvolution5X5"
    /** */
    case Convolution9Horizontal = "CIConvolution9Horizontal"
    /** */
    case Convolution9Vertical = "CIConvolution9Vertical"
    /** */
    case Gloom = "CIGloom"
    /** */
    case HighlightShadowAdjust = "CIHighlightShadowAdjust"
    /** */
    case Pixellate = "CIPixellate"
    
    //TileEffect
    /** */
    case AffineClamp = "CIAffineClamp"
    /** */
    case AffineTile = "CIAffineTile"
    /** */
    case EightfoldReflectedTile = "CIEightfoldReflectedTile"
    /** */
    case FourfoldReflectedTile = "CIFourfoldReflectedTile"
    /** */
    case FourfoldRotatedTile = "CIFourfoldRotatedTile"
    /** */
    case FourfoldTranslatedTile = "CIFourfoldTranslatedTile"
    /** */
    case GlideReflectedTile = "CIGlideReflectedTile"
    /** */
    case SixfoldReflectedTile = "CISixfoldReflectedTile"
    /** */
    case SixfoldRotatedTile = "CISixfoldRotatedTile"
    /** */
    case TriangleKaleidoscope = "CITriangleKaleidoscope"
    /** */
    case TwelvefoldReflectedTile = "CITwelvefoldReflectedTile"
}
