import UIKit

/**
 A wrapper around UIFontTextStyles. Maps 1:1 to the corresponding UIFontTextStyle for iOS 9 while allowing for nicer notation.
*/
public enum TypesetterTextStyle: String {
    /** The text style used for body text. */
    case Body
    /** The text style used for callouts. */
    case Callout
    /** The text style used for standard captions. */
    case Caption1
    /** The text style used for alternate captions. */
    case Caption2
    /** The text style used in footnotes. */
    case Footnote
    /** The text style used for headings. */
    case Headline
    /** The text style used for subheadings. */
    case Subheadline
    /** The text style used for first level hierarchical headings. */
    case Title1
    /** The text style used for second level hierarchical headings. */
    case Title2
    /** The text style used for third level hierarchical headings. */
    case Title3
    
    /**
     The count of available text styles, which is 10.
    */
    static var count: Int {
        var count = 0
        switch self.Body {
        case .Body:
            count += 1
            fallthrough
        case .Callout:
            count += 1
            fallthrough
        case .Caption1:
            count += 1
            fallthrough
        case .Caption2:
            count += 1
            fallthrough
        case .Footnote:
            count += 1
            fallthrough
        case .Headline:
            count += 1
            fallthrough
        case .Subheadline:
            count += 1
            fallthrough
        case .Title1:
            count += 1
            fallthrough
        case .Title2:
            count += 1
            fallthrough
        case .Title3:
            count += 1
        }
        
        return count
    }
    
    /**
     Initializes a new text style from an UITextStyle
     
     - Parameter textStyle: The UITextStyle to map.
    */
    init(textStyle: String) {
        if #available(iOS 9.0, *) {
            switch textStyle {
            case UIFontTextStyle.body.rawValue:
                self = .Body
            case UIFontTextStyle.caption1.rawValue:
                self = .Caption1
            case UIFontTextStyle.caption2.rawValue:
                self = .Caption2
            case UIFontTextStyle.footnote.rawValue:
                self = .Footnote
            case UIFontTextStyle.headline.rawValue:
                self = .Headline
            case UIFontTextStyle.subheadline.rawValue:
                self = .Subheadline
            case UIFontTextStyle.callout.rawValue:
                self = .Callout
            case UIFontTextStyle.title1.rawValue:
                self = .Title1
            case UIFontTextStyle.title2.rawValue:
                self = .Title2
            case UIFontTextStyle.title3.rawValue:
                self = .Title3
            default:
                self = .Body
            }
        } else {
            switch textStyle {
            case UIFontTextStyle.body.rawValue:
                self = .Body
            case UIFontTextStyle.caption1.rawValue:
                self = .Caption1
            case UIFontTextStyle.caption2.rawValue:
                self = .Caption2
            case UIFontTextStyle.footnote.rawValue:
                self = .Footnote
            case UIFontTextStyle.headline.rawValue:
                self = .Headline
            case UIFontTextStyle.subheadline.rawValue:
                self = .Subheadline
            default:
                self = .Body
            }
        }
    }
}
