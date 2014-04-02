//
//  ICM_GMViewController.m
//  GMDemo
//
//  Created by Brett Nishikawa on 2014-03-25.
//
//

#import "ICM_GMViewController.h"
#import "ICM_GMHelper.h"
#import <GoogleMaps/GoogleMaps.h>

@interface ICM_GMViewController ()

@end

@implementation ICM_GMViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)loadView {
}

- (void)viewWillAppear:(BOOL)animated
{
    for (int i = 0; i < 5; i++)
    {
        [[[self.tabBarController viewControllers] objectAtIndex:i] setIndex:i];
    }
    switch (_index) {
        case 0:
            break;
            
        case 1:
            break;
            
        case 2:
            break;
            
        case 3:
            break;
            
        case 4:
            break;
            
        default:
            break;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//if([waypoints_ count]>1){
//    NSString *sensor = @"false";
//    NSArray *parameters = [NSArray arrayWithObjects:sensor, waypointStrings_,
//                           nil];
//    NSArray *keys = [NSArray arrayWithObjects:@"sensor", @"waypoints", nil];
//    NSDictionary *query = [NSDictionary dictionaryWithObjects:parameters
//                                                      forKeys:keys];
//    ICM_GMHelper *mds=[[ICM_GMHelper alloc] init];
//    SEL selector = @selector(addDirections:);
//    [mds setDirectionsQuery:query
//               withSelector:selector
//               withDelegate:self];
//}

//- (void)addDirections:(NSDictionary *)json {
//    
//    NSDictionary *routes = [json objectForKey:@"routes"][0];
//    
//    NSDictionary *route = [routes objectForKey:@"overview_polyline"];
//    NSString *overview_route = [route objectForKey:@"points"];
//    GMSPath *path = [GMSPath pathFromEncodedPath:overview_route];
//    GMSPolyline *polyline = [GMSPolyline polylineWithPath:path];
//    polyline.map = mapView_;
//}

//- (void)mapView:(GMSMapView *)mapView didLongPressAtCoordinate:(CLLocationCoordinate2D)coordinate
//{
//    GMSReverseGeocodeCallback handler = ^(GMSReverseGeocodeResponse *response, NSError *error) {
//        GMSAddress *address = response.firstResult;
//        if (address) {
//            NSLog(@"Geocoder result: %@", address);
//            
//            GMSMarker *marker = [GMSMarker markerWithPosition:address.coordinate];
//            
//            marker.title = address.thoroughfare;
//            
//            NSMutableString *snippet = [[NSMutableString alloc] init];
//            
//            if (address.subLocality != NULL) {
//                [snippet appendString:[NSString stringWithFormat:@"subLocality: %@\n",
//                                       address.subLocality]];
//            }
//            if (address.locality != NULL) {
//                [snippet appendString:[NSString stringWithFormat:@"locality: %@\n",
//                                       address.locality]];
//            }
//            if (address.administrativeArea != NULL) {
//                [snippet appendString:[NSString stringWithFormat:@"administrativeArea: %@\n",
//                                       address.administrativeArea]];
//            }
//            if (address.country != NULL) {
//                [snippet appendString:[NSString stringWithFormat:@"country: %@\n",
//                                       address.country]];
//            }
//            
//            marker.snippet = snippet;
//            
//            marker.appearAnimation = kGMSMarkerAnimationPop;
//            mapView.selectedMarker = marker;
//            marker.map = mapView_;
//            [waypoints_ addObject:marker];
//            NSString *positionString = [[NSString alloc] initWithFormat:@"%f,%f",
//                                        coordinate.latitude,coordinate.longitude];
//            [waypointStrings_ addObject:positionString];
//            if([waypoints_ count]>1){
//                NSString *sensor = @"false";
//                NSArray *parameters = [NSArray arrayWithObjects:sensor, waypointStrings_,
//                                       nil];
//                NSArray *keys = [NSArray arrayWithObjects:@"sensor", @"waypoints", nil];
//                NSDictionary *query = [NSDictionary dictionaryWithObjects:parameters
//                                                                  forKeys:keys];
//                ICM_GMHelper *mds=[[ICM_GMHelper alloc] init];
//                SEL selector = @selector(addDirections:);
//                [mds setDirectionsQuery:query
//                           withSelector:selector
//                           withDelegate:self];
//            }
//            
//        } else {
//            NSLog(@"Could not reverse geocode point (%f,%f): %@",
//                  coordinate.latitude, coordinate.longitude, error);
//        }
//    };
//    [_geocoder reverseGeocodeCoordinate:coordinate completionHandler:handler];
//}
