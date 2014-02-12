
#import "ViewController.h"
#import <FontsManager.h>
#import <ImagesManager.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:imageView];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 40)];
    label.text = @"It works";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    // Load the font from the resources pod
    label.font = [FontsManager openSansLightFontOfSize:36];
    
    // Load the image from the resources pod
    imageView.image = [ImagesManager polarBear];
}

@end
