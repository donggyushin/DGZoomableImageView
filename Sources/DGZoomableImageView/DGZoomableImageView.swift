import UIKit
open class DGZoomableImageView: UIScrollView {
    
    private let imageView = UIImageView()
    public var image: UIImage? {
        didSet {
            guard let image = image else { return }
            self.imageView.image = image
        }
    }
    
    convenience init(image: UIImage) {
        self.init(frame: .zero)
        self.image = image
        configureUI()
    }
    
    private func configureUI() {
        // Setup image view
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalTo: widthAnchor),
            imageView.heightAnchor.constraint(equalTo: heightAnchor),
            imageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        // Setup scroll view
        minimumZoomScale = 1
        maximumZoomScale = 3
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
        delegate = self
    }
    
}

extension DGZoomableImageView: UIScrollViewDelegate {
    public func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
}
