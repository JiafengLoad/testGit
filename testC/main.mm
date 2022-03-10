//
//  main.m
//  testC
//
//  Created by Aubrey on 2022/2/18.
//

#import <Foundation/Foundation.h>


//void swap1(int a,int b){
//    //
//    int temp = a;
//    a = b;
//    b = temp;
//    NSLog(@"内部：a=%d,b=%d",a,b);
//    /*
//     1.按值传递
//
//     实参a将值拷贝给形参a,  形参a此时也在内存中拥有地址，假设地址= xxxx，值为3，
//     在所有的函数体内的操作，都是对 xxxx 这个地址的操作，所以并【不会】影响实际参数的值。
//     */
//}


//void swap2(int *a,int *b) {
//    int temp = *a; //取出地址对应的值
//    *a = *b;  //将地址b对应的值赋给地址a对应。
//    *b = temp; //将temp赋值给地址b对应的值
//    NSLog(@"内部：a=%p,b=%p",&a,&b );
//   /*
//    2.地址传递
//    ① 指针的习惯写法： int *a , int *b
//    ② 若 int c = 5, int *a = &c; 则a是一个指针变量，它的值是c的地址，
//    ③【星号*是一个取值的操作，而&是一个取地址的操作】
//    所以函数形参中只是两个整数，代表两个地址。进行取值操作之后就可以得到相应地址的值。函数接受两个类型为指针的变量，实际接受的是a和b，即两个地址。所以现在分析函数体
//    */
//
//}

//void swap3(int & a,int & b) { //引用传递
//   int temp = a;
//   a = b;
//   b = temp;
//   NSLog(@"内部：a=%d,b=%d,a的地址值=%p,b的地址值=%p,",a,b,&a,&b);  //外边传入a=1，b=2，内部已经实现交换为a=2，b=1,


//引用是变量的一个别名，调用这个别名和调用这个变量名是同样的。
//因为引用是一种别名，所以内存不会给这个别名分配地址，而是直接调用他所引用的变量，
//从输入可以看到，引用传递，穿进去的是变量的地址值。 内部的形参是拿到了实参的地址值,找到了对应的实参，然后修改了实参的值。
//}




typedef struct LinkNode{//C语言是没有类的，只有结构体
    int data;
    struct LinkNode *next;
}linkNode; //别名


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    //
        struct LinkNode s;
        s.data = 10;
        
        linkNode s1;
        s1.data =20;
    
        // insert code here...
//        int a = 1;   int b = 2;
//        NSLog(@"外部：a=%d,b=%d,a的地址值=%p,b的地址值=%p,",a,b,&a,&b);
////        swap2(<#int *a#>, <#int *b#>)
//        swap2(&a, &b);
//        NSLog(@"外部：a=%d,b=%d,a的地址值=%p,b的地址值=%p,",a,b,&a,&b);
        
        
        //        printf("%p",a);  //C语言中，数组的地址，就是元素的首元素的地址
        //        printf("\n");
        //        int *p = a;
        
//        int a[5] ={6,2,3,4,5};
//        int *p = a;
//        for (int i =0; i<5; i++) {
//            //① 这里a是个数组，但是a同时也是个地址值，所以可以进行加的操作。
//            //② *是取指针变量对应的元素，故*(a+i)可以取出对应的元素
//            //③ 由于，现在p这个指针变量，和a是一样的，所欲可以把 *(a+i) 改成 *(p+i)
//            //④ 由于p现在是个变量，所以p可以改成p++
//            printf("数组的地址%p, 加%d*4后 => 数组元素的地址%p，对应的元素是%d，测试p指针指向的内容：%d ",a, i, a+i, *(a+i),*(p+i));
//
//            printf("\n");
//        }
        
        
        int *p[4]; //有*，表示他每个数组元素是指针。
   
    }
    return 0;
}


