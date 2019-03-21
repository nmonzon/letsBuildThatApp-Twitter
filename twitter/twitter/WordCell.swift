import Foundation
import UIKit

class WordCell: UICollectionViewCell{
    
    let wordLabel : UILabel = {
        let lblWord = UILabel()
        lblWord.text = "TEST TEST TEST"
        lblWord.translatesAutoresizingMaskIntoConstraints = false
        return lblWord
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.yellow
        addSubview(wordLabel)
        
        wordLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        wordLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        wordLabel.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        wordLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
