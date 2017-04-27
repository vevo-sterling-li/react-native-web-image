#import "WebImageView.h"
#import "UIImageView+VMWebCache.h"

@implementation WebImageView

- (void)setSource:(WebImageSource *)source {
    _source = source;
    NSString *path = source.uri.absoluteString;
    if (![path containsString:@"://"]) {
        UIImage *img = [UIImage imageNamed:path];
        if (img) {
            self.image = img;
            if (_onLoad) {
                _onLoad(@{@"uri":path});
            }
            return;
        }
    }
    
    [self vm_setImageWithURL:source.uri placeholderImage:[UIImage imageNamed:_source.placeholderImageName] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        if (error) {
            if (_onWebImageError) {
                _onWebImageError(@{@"error":error.description, @"uri":imageURL.absoluteString});
            }
            return;
        } else {
            if (_onLoad) {
                _onLoad(@{@"uri":imageURL.absoluteString});
            }
        }
    }];
}

@end
