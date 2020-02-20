# VMTGalleryFramework
The framework help you get all images from your device and show on your custom view.

## Usage
1. Drag "VMTGalleryFramework.framework" to your project.
2. Add "VMTGalleryFramework.framework" into Embedded Binaries.
3. Add "Privacy - Photo Library Usage Description" to your Info.plist file.
4. Don't forget allow the application get photos from your device when the dialog is shown.

## Sample Code
```python
func initGalleryView() {
  let r = CGRect(x: 0, y: 0, width: vAllImageBase.frame.size.width, height: vAllImageBase.frame.size.height)
  let vGallery = VMTGalleryView(frame: r)
  vGallery.backgroundColor = UIColor.white
  vGallery.delegate = self
  vAllImageBase.addSubview(vGallery)
}
```

## Contact
If you have any question, please contact me by email: afterjob2018@gmail.com

## Preview image

![Alt text](https://github.com/iVoGia/VMTGalleryFramework/blob/master/VMTGalleryFrameworkDemo/Demo.jpg?raw=true)

## Thanks and Best Regards.
