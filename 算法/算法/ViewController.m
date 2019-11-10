//
//  ViewController.m
//  算法
//
//  Created by River on 2019/11/9.
//  Copyright © 2019 River. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    //NSMutableArray *array=[NSMutableArray arrayWithArray:@[@(2),@(8),@(1),@(3),@(9),@(4),@(7),@(5),@(8),@(6),@(56),@(12),@(34),@(17),@(99),@(32)]];
    //    [self bubbleSortWithArray:array];//选择排序
    //    [self bubbleSortWithArray:array];//冒泡排序
    //    [self quickSordWithArray:array left:0 right:(int)array.count-1];//快速排序
    //    [self insertSordWithArray:array];//插入排序
    //NSLog(@"%@",array);
    
    NSMutableArray *array=[NSMutableArray arrayWithArray:@[@(1),@(2),@(3),@(5),@(7),@(8),@(9),@(11),@(12),@(13),@(14),@(15),@(16),@(34),@(46),@(60)]];
   int index= [self findWithArray:array value:8];
    
    NSLog(@"%d",index);
}
//选择排序
-(void)bubbleSortWithArray:(NSMutableArray *)array{
    for (int i=0; i<array.count; i++) {
        for (int j=i+1; j<array.count; j++) {
            if ([array[i] intValue]>[array[j] intValue]) {
                int temp =[array[j] intValue];
                array[j]=array[i];
                array[i]=[NSNumber numberWithInt:temp];
            }
        }
    }
    //    NSLog(@"%@",array);
}
//冒泡排序
-(void)bubbleSortWithArray1:(NSMutableArray *)array{
    for (int i=0; i<array.count; i++) {
        for (int j=0; j<array.count-i-1; j++) {
            if ([array[j] intValue]>[array[j+1] intValue]) {
                int temp =[array[j] intValue];
                array[j]=array[j+1];
                array[j+1]=[NSNumber numberWithInt:temp];
            }
        }
    }
    //    NSLog(@"%@",array);
}
//快速排序
-(void)quickSordWithArray:(NSMutableArray *)array left:(int)left right:(int)right{
    if (left>right) {
        return;
    }
    int i=left;
    int j=right;
    int middleValue=[array[i] intValue];
    while (i<j) {
        while (i<j&&middleValue<=[array[j] intValue]) {
            j--;
        }
        if (i<j) {
            array[i]=array[j];
        }
        while (i<j&&middleValue>=[array[i] intValue]) {
            i++;
        }
        if (i<j) {
            array[j]=array[i];
        }
    }
    array[i]=@(middleValue);
    [self quickSordWithArray:array left:left right:i-1];
    [self quickSordWithArray:array left:i+1 right:right];
}
//插入排序
-(void)insertSordWithArray:(NSMutableArray *)array{
    for (int i=1; i<array.count; i++) {
        int temp=[array[i] intValue];
        for (int j=i-1; j>=0&&temp<[array[j] intValue]; j--) {
            array[j+1]=array[j];
            array[j]=@(temp);
            continue;
        }
    }
}

//二分查找
-(int)findWithArray:(NSMutableArray *)array value:(int)value{
    int min=0;
    int max=(int)array.count-1;
    while (min<=max) {
        int middle=(min+max)/2;
        int middleValue=[array[middle] intValue];
        if (middleValue>value) {
            max=middle-1;
        }else if (middleValue<value) {
                min=middle+1;
            }else{
                return middle;
            }
    }
    return -1;
    
}

@end
