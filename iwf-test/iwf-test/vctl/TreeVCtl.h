//
//  PCTreeVCtl.h
//  PCECommerce
//
//  Created by ShaoHong Wen on 9/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iwf/iwf.h>
@interface TreeVCtl : UIViewController<UITreeViewDelegate,UIPushTreeViewDelegate>{
    int _type;
}
@property(nonatomic,assign)int type;
@end
