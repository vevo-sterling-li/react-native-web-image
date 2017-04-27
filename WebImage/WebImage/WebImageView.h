#import <UIKit/UIKit.h>

#import <SDWebImage/UIImageView+WebCache.h>

#import <React/RCTComponent.h>

#import "WebImageSource.h"

@interface WebImageView : UIImageView

@property (nonatomic, copy) RCTDirectEventBlock onWebImageError;
@property (nonatomic, copy) RCTDirectEventBlock onLoad;
@property (nonatomic) WebImageSource* source;

@end
