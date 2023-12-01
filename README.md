# Karatsuba乘法器----夫夫
程序代码位于

>src->main->scala->Karatsuba  

测试代码位于:
>src->test->KaratsubaTest.scala  


通过编写16bit,8bit,4bit,2bit的Karatsuba乘法器，不断递归，将大数一直拆分成小数，并且调用更小一级的乘法器模块。  

主程序为```Karatsuba32x32.scala``` ,假设为n为乘法器位数 
1. 将第一个大数拆分，高位为a,低位为b
2. 将第二个大数拆分，高位为c,低位为d
3. 根据公式```C= ac<<n + (ad+bc)<<n/2 + bd```调用乘法器,并且进行连线。
4. (ad+bc)的结果放在psum中，因为考虑到相加会溢出，因此需要分配额外多的位数。