//
//  GLColor.swift
//  GLColor
//
//  Created by Giulio Lombardo on 02/11/17.
//
//  MIT License
//
//  Copyright (c) 2017 Giulio Lombardo
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to
//  deal in the Software without restriction, including without limitation the
//  rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
//  sell copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
//  IN THE SOFTWARE.
//

import UIKit

@available(iOS 10.0, *)
public final class GLColor: UIColor {
	convenience init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat, gamut: UIDisplayGamut) {
		switch gamut {
		case .P3:
			self.init(displayP3Red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: alpha)
			
		default:
			self.init(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: alpha)
		}
	}
}

@available(iOS 10.0, *)
public extension UIColor {
	final func matching(colorGamut: UIDisplayGamut) -> UIColor {
		switch colorGamut {
		case .P3:
			let color: CIColor = CIColor(color: self)
			return UIColor(displayP3Red: color.red, green: color.green, blue: color.blue, alpha: color.alpha)
			
		default:
			return self
		}
	}
}

@available(iOS 10.0, *)
public extension GLColor {
	final var p3Gamut: UIColor {
		let color: CIColor = CIColor(color: self)
		return UIColor(displayP3Red: color.red, green: color.green, blue: color.blue, alpha: color.alpha)
	}
	
	final var sRGBGamut: UIColor {
		let color: CIColor = CIColor(color: self)
		return UIColor(red: color.red, green: color.green, blue: color.blue, alpha: color.alpha)
	}
}
