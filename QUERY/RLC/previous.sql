INSERT INTO TmpRLC ( TenantId, TerminalNumber, GrossAmount, TaxAmount, VoidAmount, LineDiscountAmount,
DiscountTransaction, ReturnAmount, ReturnTransaction, AdjustmentAmount, 
AdjustmentTransaction, ServiceChargeAmount, PreviousEOD, PreviousAmount, 
CurrentEOD, CurrentEODAmount, TransactionDate, NoveltyItemAmount, 
MiscItemAmount, LocalTax, CreditSalesAmount, CreditTaxAmount, 
NonVATSalesAmount, PharmaItemSalesAmount, NonPharmaItemSalesAmount, DisabilityDiscount, GrossSalesAmountNotSubjectToPercentageRent, 
RePrintedAmount, RePrintedTransaction )

SELECT 
SysRLC.TenantId, 
SysRLC.TerminalNumber, 
0 AS GrossAmount, 
0 AS TaxAmount, 
0 AS VoidAmount, 
0 AS LineDiscountAmount, 
0 AS DiscountTransaction, 
0 AS ReturnAmount, 
0 AS ReturnTransaction, 
0 AS AdjustmentAmount, 
0 AS AdjustmentTransaction, 
0 AS ServiceChargeAmount, 
DCount("ReadingDate","SysRLC","ReadingDate<#" & [Forms]![SysSettings]![RLC_DateMem] & "#") AS PreviousEOD, 
SysRLC.CurrentEODAmount AS PreviousAmount, 
DCount("ReadingDate","SysRLC","ReadingDate<#" & [Forms]![SysSettings]![RLC_DateMem] & "#")+1 AS CurrentEOD, 
0 AS CurrentEODAmount, 
[Forms]![SysSettings]![RLC_DateMem] AS TransactionDate, 
0 AS NoveltyItemAmount, 0 AS MiscItemAmount, 
0 AS LocalTax, 0 AS CreditSalesAmount, 
0 AS CreditTaxAmount, 0 AS NonVATSalesAmount, 
0 AS PharmaItemSalesAmount, 
0 AS NonPharmaItemSalesAmount, 
0 AS DisabilityDiscount,
0 AS GrossSalesAmountNotSubjectToPercentageRent, 
0 AS RePrintedAmount, 
0 AS RePrintedTransaction
FROM SysRLC
WHERE (((SysRLC.ReadingDate)=DMax("ReadingDate","SysRLC","ReadingDate<#" & [Forms]![SysSettings]![RLC_DateMem] & "#")));