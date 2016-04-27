//
//  main.m
//  BNRChapter14-MoreMessages


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

//         //Conveniece method.
//        NSDate *now = [NSDate date];
        NSDate *now = [[NSDate alloc]init];
        NSLog(@"\nThis NSDate object lives at %p\n\n", now);
        NSLog(@"\nThe date is %@\n", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"\nIt has been %f seconds since the start of 1970\n\n", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"\nIn 100,000 seconds it will be %@\n\n", later);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"\nMy calendar is %@\n\n", [cal calendarIdentifier]);
        
        NSLog(@"\nThe day of the month is %lu\n\n",(unsigned long)[cal ordinalityOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:now]);
        
        // Challenge: How many seconds have I been alive?
        NSDate *justNow = [NSDate date];

        NSDateComponents *dateComp = [[NSDateComponents alloc]init];
        [dateComp setYear:1980];
        [dateComp setMonth:9];
        [dateComp setDay:12];
        [dateComp setHour:0];
        [dateComp setMinute:0];
        [dateComp setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc]initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        
        NSDate *birthday = [g dateFromComponents:dateComp];
        
        double secondsSinceBirthday = [justNow timeIntervalSinceDate:birthday];
        NSLog(@"\nI have been alive for %f seconds\n\n", secondsSinceBirthday);
        
        double yearsCheck = ((((secondsSinceBirthday / 60) / 60) / 24) /365);
        NSLog(@"\nI am %f years old. womp, womp...\n\n", yearsCheck);
    
    }
    return 0;
}
