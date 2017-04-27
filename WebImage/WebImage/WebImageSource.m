#import "WebImageSource.h"

@implementation WebImageSource

- (instancetype)initWithURIString:(NSString*)uri {
    self = [super init];
    if (self) {
        _uri = [NSURL URLWithString:[uri copy]];
    }
    return self;
}

- (instancetype)initWithURIString:(NSString*)uri placeholderImage:(NSString *)imageName {
    self = [super init];
    if (self) {
        _uri = [NSURL URLWithString:[uri copy]];
        if (imageName)
        _placeholderImageName = [imageName copy];
    }
    return self;
}

@end
