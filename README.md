## VERSION 20240313
* Date completed Wednesday, March 03, 2024 

## SOFTWARE DEVELOPERS
*   Mark Gregory Pradilla
*   Mark Dinglasa

## PURPOSE
* This program is for SM Acreditation

## ADDED FUNCTION
* In POS Sales upon selecting an Item and tendering. The data would be saved in tmpSM(CSV) and the progam would automatically create a folder named SIA and a file of Transaction with a complete name of the cuurent month and year which is 03_2024_Transactions.csv . This file contains all of the transaction within that month.

## TO START
* You can tender any item in the POS to test if the function is working as expected.

## FILE LOCATION
Option 1. 
```bash
    C:\SIA\
    C:\ipos.accde
```
-   The software automatically creates the SIA folder, but some instances it won't be able to create hence it needs administrator access to create a file in C dir

Option 2.
```bash
    D:\SIA\
    D:\ipos.accde
```
-  Use D dir if option 1 is not applicable
