.class public Lcom/bzbs/marketplace/model/PurchaseModel;
.super Ljava/lang/Object;
.source "PurchaseModel.java"


# instance fields
.field private AdsMessage:Ljava/lang/String;

.field private AgencyID:I

.field private AgencyName:Ljava/lang/String;

.field private Barcode:Ljava/lang/String;

.field private CategoryID:I

.field private Condition:Ljava/lang/String;

.field private CurrentDate:I

.field private Delivered:Z

.field private Discount:D

.field private ExpireIn:J

.field private FullImageUrl:Ljava/lang/String;

.field private HasWinner:Z

.field private ID:I

.field private InstallAppIosSchema:Ljava/lang/String;

.field private InstallAppUrl:Ljava/lang/String;

.field private InstallPackageName:Ljava/lang/String;

.field private InstalledAppDate:Ljava/lang/String;

.field private InstallingMessage:Ljava/lang/String;

.field private InterfaceDisplay:Ljava/lang/String;

.field private IsCampaignTopup:Z

.field private IsConditionPass:Z

.field private IsInstalledApp:Z

.field private IsNotAutoUse:Z

.field private IsShipped:Z

.field private IsSpecificPrintVoucher:Z

.field private IsUsed:Z

.field private IsWinner:Z

.field private ItemNumber:I

.field private MinutesValidAfterUsed:I

.field private ModifyDate:I

.field private Name:Ljava/lang/String;

.field private OriginalPrice:I

.field private OtherPointPerUnit:I

.field private ParcelNo:Ljava/lang/String;

.field private ParentCategoryID:Ljava/lang/String;

.field private PointPerUnit:I

.field private PointType:Ljava/lang/String;

.field private PricePerUnit:F

.field private PrivilegeMessage:Ljava/lang/String;

.field private RedeemDate:I

.field private RedeemKey:Ljava/lang/String;

.field private Serial:Ljava/lang/String;

.field private ShippedStatus:Ljava/lang/String;

.field private ShippingDate:Ljava/lang/String;

.field private StyleSize:Ljava/lang/String;

.field private StyleType:Ljava/lang/String;

.field private Type:I

.field private UsedDate:Ljava/lang/String;

.field private VerifyTypeAndroid:Ljava/lang/String;

.field private VerifyTypeIos:Ljava/lang/String;

.field private VerifyingMessage:Ljava/lang/String;

.field private VoucherExpireDate:J

.field private WinningDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdsMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->AdsMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getAgencyID()I
    .registers 2

    .prologue
    .line 493
    iget v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->AgencyID:I

    return v0
.end method

.method public getAgencyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->AgencyName:Ljava/lang/String;

    return-object v0
.end method

.method public getBarcode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->Barcode:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryID()I
    .registers 2

    .prologue
    .line 373
    iget v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->CategoryID:I

    return v0
.end method

.method public getCondition()Ljava/lang/String;
    .registers 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->Condition:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentDate()I
    .registers 2

    .prologue
    .line 369
    iget v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->CurrentDate:I

    return v0
.end method

.method public getDiscount()D
    .registers 3

    .prologue
    .line 441
    iget-wide v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->Discount:D

    return-wide v0
.end method

.method public getExpireIn()J
    .registers 3

    .prologue
    .line 533
    iget-wide v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->ExpireIn:J

    return-wide v0
.end method

.method public getFullImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->FullImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getID()I
    .registers 2

    .prologue
    .line 365
    iget v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->ID:I

    return v0
.end method

.method public getInstallAppIosSchema()Ljava/lang/String;
    .registers 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->InstallAppIosSchema:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallAppUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->InstallAppUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->InstallPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstalledAppDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->InstalledAppDate:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallingMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->InstallingMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceDisplay()Ljava/lang/String;
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->InterfaceDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getItemNumber()I
    .registers 2

    .prologue
    .line 469
    iget v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->ItemNumber:I

    return v0
.end method

.method public getMinutesValidAfterUsed()I
    .registers 2

    .prologue
    .line 361
    iget v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->MinutesValidAfterUsed:I

    return v0
.end method

.method public getModifyDate()I
    .registers 2

    .prologue
    .line 473
    iget v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->ModifyDate:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalPrice()I
    .registers 2

    .prologue
    .line 333
    iget v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->OriginalPrice:I

    return v0
.end method

.method public getOtherPointPerUnit()I
    .registers 2

    .prologue
    .line 477
    iget v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->OtherPointPerUnit:I

    return v0
.end method

.method public getParcelNo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->ParcelNo:Ljava/lang/String;

    return-object v0
.end method

.method public getParentCategoryID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->ParentCategoryID:Ljava/lang/String;

    return-object v0
.end method

.method public getPointPerUnit()I
    .registers 2

    .prologue
    .line 449
    iget v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->PointPerUnit:I

    return v0
.end method

.method public getPointType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->PointType:Ljava/lang/String;

    return-object v0
.end method

.method public getPricePerUnit()F
    .registers 2

    .prologue
    .line 481
    iget v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->PricePerUnit:F

    return v0
.end method

.method public getPrivilegeMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->PrivilegeMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRedeemDate()I
    .registers 2

    .prologue
    .line 433
    iget v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->RedeemDate:I

    return v0
.end method

.method public getRedeemKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->RedeemKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .registers 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->Serial:Ljava/lang/String;

    return-object v0
.end method

.method public getShippedStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->ShippedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->ShippingDate:Ljava/lang/String;

    return-object v0
.end method

.method public getStyleSize()Ljava/lang/String;
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->StyleSize:Ljava/lang/String;

    return-object v0
.end method

.method public getStyleType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->StyleType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 513
    iget v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->Type:I

    return v0
.end method

.method public getUsedDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->UsedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyTypeAndroid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->VerifyTypeAndroid:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyTypeIos()Ljava/lang/String;
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->VerifyTypeIos:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyingMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->VerifyingMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getVoucherExpireDate()J
    .registers 3

    .prologue
    .line 349
    iget-wide v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->VoucherExpireDate:J

    return-wide v0
.end method

.method public getWinningDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->WinningDate:Ljava/lang/String;

    return-object v0
.end method

.method public isDelivered()Z
    .registers 2

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->Delivered:Z

    return v0
.end method

.method public isHasWinner()Z
    .registers 2

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->HasWinner:Z

    return v0
.end method

.method public isInstalledApp()Z
    .registers 2

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->IsInstalledApp:Z

    return v0
.end method

.method public isIsCampaignTopup()Z
    .registers 2

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->IsCampaignTopup:Z

    return v0
.end method

.method public isIsConditionPass()Z
    .registers 2

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->IsConditionPass:Z

    return v0
.end method

.method public isIsNotAutoUse()Z
    .registers 2

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->IsNotAutoUse:Z

    return v0
.end method

.method public isIsSpecificPrintVoucher()Z
    .registers 2

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->IsSpecificPrintVoucher:Z

    return v0
.end method

.method public isShipped()Z
    .registers 2

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->IsShipped:Z

    return v0
.end method

.method public isUsed()Z
    .registers 2

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->IsUsed:Z

    return v0
.end method

.method public isWinner()Z
    .registers 2

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->IsWinner:Z

    return v0
.end method

.method public setAdsMessage(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 325
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->AdsMessage:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setAgencyID(I)V
    .registers 2

    .prologue
    .line 281
    iput p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->AgencyID:I

    .line 282
    return-void
.end method

.method public setAgencyName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 273
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->AgencyName:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setBarcode(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 189
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->Barcode:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setCategoryID(I)V
    .registers 2

    .prologue
    .line 161
    iput p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->CategoryID:I

    .line 162
    return-void
.end method

.method public setCondition(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 277
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->Condition:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setCurrentDate(I)V
    .registers 2

    .prologue
    .line 157
    iput p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->CurrentDate:I

    .line 158
    return-void
.end method

.method public setDelivered(Z)V
    .registers 2

    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->Delivered:Z

    .line 286
    return-void
.end method

.method public setDiscount(D)V
    .registers 4

    .prologue
    .line 229
    iput-wide p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->Discount:D

    .line 230
    return-void
.end method

.method public setExpireIn(J)V
    .registers 4

    .prologue
    .line 321
    iput-wide p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->ExpireIn:J

    .line 322
    return-void
.end method

.method public setFullImageUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 309
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->FullImageUrl:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setHasWinner(Z)V
    .registers 2

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->HasWinner:Z

    .line 194
    return-void
.end method

.method public setID(I)V
    .registers 2

    .prologue
    .line 153
    iput p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->ID:I

    .line 154
    return-void
.end method

.method public setInstallAppIosSchema(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 225
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->InstallAppIosSchema:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setInstallAppUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 289
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->InstallAppUrl:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setInstallPackageName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 177
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->InstallPackageName:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setInstalledAppDate(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 249
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->InstalledAppDate:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setInstallingMessage(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 125
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->InstallingMessage:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setInterfaceDisplay(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 169
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->InterfaceDisplay:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setIsCampaignTopup(Z)V
    .registers 2

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->IsCampaignTopup:Z

    .line 142
    return-void
.end method

.method public setIsConditionPass(Z)V
    .registers 2

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->IsConditionPass:Z

    .line 210
    return-void
.end method

.method public setIsInstalledApp(Z)V
    .registers 2

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->IsInstalledApp:Z

    .line 186
    return-void
.end method

.method public setIsNotAutoUse(Z)V
    .registers 2

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->IsNotAutoUse:Z

    .line 234
    return-void
.end method

.method public setIsShipped(Z)V
    .registers 2

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->IsShipped:Z

    .line 298
    return-void
.end method

.method public setIsSpecificPrintVoucher(Z)V
    .registers 2

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->IsSpecificPrintVoucher:Z

    .line 198
    return-void
.end method

.method public setIsUsed(Z)V
    .registers 2

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->IsUsed:Z

    .line 174
    return-void
.end method

.method public setIsWinner(Z)V
    .registers 2

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->IsWinner:Z

    .line 206
    return-void
.end method

.method public setItemNumber(I)V
    .registers 2

    .prologue
    .line 257
    iput p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->ItemNumber:I

    .line 258
    return-void
.end method

.method public setMinutesValidAfterUsed(I)V
    .registers 2

    .prologue
    .line 149
    iput p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->MinutesValidAfterUsed:I

    .line 150
    return-void
.end method

.method public setModifyDate(I)V
    .registers 2

    .prologue
    .line 261
    iput p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->ModifyDate:I

    .line 262
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 129
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->Name:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setOriginalPrice(I)V
    .registers 2

    .prologue
    .line 121
    iput p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->OriginalPrice:I

    .line 122
    return-void
.end method

.method public setOtherPointPerUnit(I)V
    .registers 2

    .prologue
    .line 265
    iput p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->OtherPointPerUnit:I

    .line 266
    return-void
.end method

.method public setParcelNo(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 133
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->ParcelNo:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setParentCategoryID(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 217
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->ParentCategoryID:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setPointPerUnit(I)V
    .registers 2

    .prologue
    .line 237
    iput p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->PointPerUnit:I

    .line 238
    return-void
.end method

.method public setPointType(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 313
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->PointType:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setPricePerUnit(F)V
    .registers 2

    .prologue
    .line 269
    iput p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->PricePerUnit:F

    .line 270
    return-void
.end method

.method public setPrivilegeMessage(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 241
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->PrivilegeMessage:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setRedeemDate(I)V
    .registers 2

    .prologue
    .line 221
    iput p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->RedeemDate:I

    .line 222
    return-void
.end method

.method public setRedeemKey(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 253
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->RedeemKey:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setSerial(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 305
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->Serial:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setShippedStatus(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 317
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->ShippedStatus:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setShippingDate(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->ShippingDate:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setStyleSize(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 213
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->StyleSize:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setStyleType(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 293
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->StyleType:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setType(I)V
    .registers 2

    .prologue
    .line 301
    iput p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->Type:I

    .line 302
    return-void
.end method

.method public setUsedDate(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->UsedDate:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setVerifyTypeAndroid(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 165
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->VerifyTypeAndroid:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setVerifyTypeIos(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 201
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->VerifyTypeIos:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setVerifyingMessage(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 181
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->VerifyingMessage:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setVoucherExpireDate(J)V
    .registers 4

    .prologue
    .line 137
    iput-wide p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->VoucherExpireDate:J

    .line 138
    return-void
.end method

.method public setWinningDate(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 245
    iput-object p1, p0, Lcom/bzbs/marketplace/model/PurchaseModel;->WinningDate:Ljava/lang/String;

    .line 246
    return-void
.end method
