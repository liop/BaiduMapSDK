//
//  CECViewController.m
//  BaiduMapSDK
//
//  Created by liop on 03/27/2019.
//  Copyright (c) 2019 liop. All rights reserved.
//

#import "CECViewController.h"

#import <BaiduMapSDK/BMKMapManager.h>
#import <BaiduMapSDK/BMKMapView.h>

@interface CECViewController ()<BMKGeneralDelegate>

@property (nonatomic, strong) BMKMapView *mapView;
@end

@implementation CECViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    BMKMapManager *manger = [[BMKMapManager alloc]init];
    [manger start:@"dIzm1XAyrwndqUcoX1F5jbltDnsumxTw" generalDelegate:self];
    
    
    [self.view addSubview:self.mapView];
    
    self.mapView.frame = self.view.frame;
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillLayoutSubviews
{
    self.mapView.frame = self.view.frame;
    [super viewWillLayoutSubviews];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BMKMapView *)mapView
{
    if (!_mapView) {
        _mapView = [[BMKMapView alloc]init];
        _mapView.mapType = BMKMapTypeStandard;
        _mapView.showsUserLocation = false; // 显示用户的位置，暂时隐藏
        _mapView.showMapScaleBar = false;
        _mapView.showIndoorMapPoi = false;
        _mapView.isSelectedAnnotationViewFront = true;
    }
    
    return _mapView;
}

@end
