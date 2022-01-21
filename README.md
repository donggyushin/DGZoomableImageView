# DGZoomableImageView
A zoomable, pan-able image view
<div>
  <img src="https://user-images.githubusercontent.com/34573243/150555498-2b08ac0e-5c86-4dd9-864e-e8e519fecede.gif" width=250 />
</div>

## Requirements
- iOS 12.0+
- Swift 5.5+
- Xcode 10.0+


## Installation

### SPM
```
File > Add Packages > https://github.com/donggyushin/DGZoomableImageView
```

### CocoaPod
```
pod 'DGZoomableImageView', :git => 'https://github.com/donggyushin/DGZoomableImageView'
```

## Usage
```
let imageView: DGZoomableImageView = {
    let view = DGZoomableImageView()
    view.urlString = "https://image.shutterstock.com/image-vector/sample-stamp-grunge-texture-vector-260nw-1389188336.jpg"
    return view
}()

let imageView: DGZoomableImageView = {
    let view = DGZoomableImageView()
    view.image = image
    return view
}()
```

## Properties


| Properties  | Description | Default | Type |
| ------------- | ------------- | ------------- | ------------- |
| image  | DGZoomableImageView's image  | nil | UIImage |
| urlString  | You can set image by url string  | nil | String |
| imageViewContentMode  | image view's content mode  | .scaleAspectFit | UIView.ContentMode |



