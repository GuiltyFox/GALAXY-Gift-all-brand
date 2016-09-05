.class public Lcom/bzbs/marketplace/model/InstallAppModel;
.super Ljava/lang/Object;
.source "InstallAppModel.java"


# instance fields
.field private AdsMessage:Ljava/lang/String;

.field private AgencyID:I

.field private AgencyName:Ljava/lang/String;

.field private Barcode:Ljava/lang/String;

.field private CategoryID:I

.field private Condition:Ljava/lang/String;

.field private CurrentDate:I

.field private Delivered:Z

.field private Discount:I

.field private ExpireIn:J

.field private FullImageUrl:Ljava/lang/String;

.field private HasWinner:Z

.field private ID:I

.field private InstallAppIosSchema:Ljava/lang/String;

.field private InstallAppUrl:Ljava/lang/String;

.field private InstallPackageName:Ljava/lang/String;

.field private InstalledAppDate:J

.field private InstallingMessage:Ljava/lang/String;

.field private InterfaceDisplay:Ljava/lang/Object;

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

.field private OriginalPrice:Ljava/lang/Object;

.field private OtherPointPerUnit:I

.field private ParcelNo:Ljava/lang/String;

.field private ParentCategoryID:Ljava/lang/Object;

.field private PointPerUnit:I

.field private PointType:Ljava/lang/Object;

.field private PricePerUnit:I

.field private PrivilegeMessage:Ljava/lang/String;

.field private RedeemDate:I

.field private RedeemKey:Ljava/lang/String;

.field private Serial:Ljava/lang/String;

.field private ShippedStatus:Ljava/lang/String;

.field private ShippingDate:F

.field private StyleSize:Ljava/lang/Object;

.field private StyleType:Ljava/lang/Object;

.field private Type:I

.field private UsedDate:J

.field private VerifyTypeAndroid:Ljava/lang/String;

.field private VerifyTypeIos:Ljava/lang/String;

.field private VerifyingMessage:Ljava/lang/String;

.field private VoucherExpireDate:I

.field private WinningDate:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method


# virtual methods
.method public getAdsMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->AdsMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getAgencyID()I
    .registers 2

    .prologue
    .line 154
    iget v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->AgencyID:I

    return v0
.end method

.method public getAgencyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->AgencyName:Ljava/lang/String;

    return-object v0
.end method

.method public getBarcode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->Barcode:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryID()I
    .registers 2

    .prologue
    .line 530
    iget v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->CategoryID:I

    return v0
.end method

.method public getCondition()Ljava/lang/String;
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->Condition:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentDate()I
    .registers 2

    .prologue
    .line 210
    iget v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->CurrentDate:I

    return v0
.end method

.method public getDiscount()I
    .registers 2

    .prologue
    .line 418
    iget v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->Discount:I

    return v0
.end method

.method public getExpireIn()J
    .registers 3

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->ExpireIn:J

    return-wide v0
.end method

.method public getFullImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->FullImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getID()I
    .registers 2

    .prologue
    .line 122
    iget v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->ID:I

    return v0
.end method

.method public getInstallAppIosSchema()Ljava/lang/String;
    .registers 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->InstallAppIosSchema:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallAppUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->InstallAppUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->InstallPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstalledAppDate()J
    .registers 3

    .prologue
    .line 362
    iget-wide v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->InstalledAppDate:J

    return-wide v0
.end method

.method public getInstallingMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->InstallingMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceDisplay()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->InterfaceDisplay:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemNumber()I
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->ItemNumber:I

    return v0
.end method

.method public getMinutesValidAfterUsed()I
    .registers 2

    .prologue
    .line 410
    iget v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->MinutesValidAfterUsed:I

    return v0
.end method

.method public getModifyDate()I
    .registers 2

    .prologue
    .line 298
    iget v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->ModifyDate:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalPrice()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->OriginalPrice:Ljava/lang/Object;

    return-object v0
.end method

.method public getOtherPointPerUnit()I
    .registers 2

    .prologue
    .line 522
    iget v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->OtherPointPerUnit:I

    return v0
.end method

.method public getParcelNo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->ParcelNo:Ljava/lang/String;

    return-object v0
.end method

.method public getParentCategoryID()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->ParentCategoryID:Ljava/lang/Object;

    return-object v0
.end method

.method public getPointPerUnit()I
    .registers 2

    .prologue
    .line 346
    iget v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->PointPerUnit:I

    return v0
.end method

.method public getPointType()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->PointType:Ljava/lang/Object;

    return-object v0
.end method

.method public getPricePerUnit()I
    .registers 2

    .prologue
    .line 482
    iget v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->PricePerUnit:I

    return v0
.end method

.method public getPrivilegeMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->PrivilegeMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRedeemDate()I
    .registers 2

    .prologue
    .line 178
    iget v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->RedeemDate:I

    return v0
.end method

.method public getRedeemKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->RedeemKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->Serial:Ljava/lang/String;

    return-object v0
.end method

.method public getShippedStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->ShippedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingDate()F
    .registers 2

    .prologue
    .line 242
    iget v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->ShippingDate:F

    return v0
.end method

.method public getStyleSize()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->StyleSize:Ljava/lang/Object;

    return-object v0
.end method

.method public getStyleType()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->StyleType:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 170
    iget v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->Type:I

    return v0
.end method

.method public getUsedDate()J
    .registers 3

    .prologue
    .line 194
    iget-wide v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->UsedDate:J

    return-wide v0
.end method

.method public getVerifyTypeAndroid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->VerifyTypeAndroid:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyTypeIos()Ljava/lang/String;
    .registers 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->VerifyTypeIos:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyingMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->VerifyingMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getVoucherExpireDate()I
    .registers 2

    .prologue
    .line 202
    iget v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->VoucherExpireDate:I

    return v0
.end method

.method public getWinningDate()F
    .registers 2

    .prologue
    .line 258
    iget v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->WinningDate:F

    return v0
.end method

.method public isCampaignTopup()Z
    .registers 2

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->IsCampaignTopup:Z

    return v0
.end method

.method public isConditionPass()Z
    .registers 2

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->IsConditionPass:Z

    return v0
.end method

.method public isDelivered()Z
    .registers 2

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->Delivered:Z

    return v0
.end method

.method public isHasWinner()Z
    .registers 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->HasWinner:Z

    return v0
.end method

.method public isInstalledApp()Z
    .registers 2

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->IsInstalledApp:Z

    return v0
.end method

.method public isNotAutoUse()Z
    .registers 2

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->IsNotAutoUse:Z

    return v0
.end method

.method public isShipped()Z
    .registers 2

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->IsShipped:Z

    return v0
.end method

.method public isSpecificPrintVoucher()Z
    .registers 2

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->IsSpecificPrintVoucher:Z

    return v0
.end method

.method public isUsed()Z
    .registers 2

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->IsUsed:Z

    return v0
.end method

.method public isWinner()Z
    .registers 2

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->IsWinner:Z

    return v0
.end method

.method public setAdsMessage(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 382
    iput-object p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->AdsMessage:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public setAgencyID(I)V
    .registers 2

    .prologue
    .line 158
    iput p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->AgencyID:I

    .line 159
    return-void
.end method

.method public setAgencyName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 166
    iput-object p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->AgencyName:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setBarcode(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 334
    iput-object p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->Barcode:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public setCategoryID(I)V
    .registers 2

    .prologue
    .line 534
    iput p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->CategoryID:I

    .line 535
    return-void
.end method

.method public setCondition(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 318
    iput-object p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->Condition:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public setCurrentDate(I)V
    .registers 2

    .prologue
    .line 214
    iput p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->CurrentDate:I

    .line 215
    return-void
.end method

.method public setDelivered(Z)V
    .registers 2

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->Delivered:Z

    .line 231
    return-void
.end method

.method public setDiscount(I)V
    .registers 2

    .prologue
    .line 422
    iput p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->Discount:I

    .line 423
    return-void
.end method

.method public setExpireIn(J)V
    .registers 4

    .prologue
    .line 222
    iput-wide p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->ExpireIn:J

    .line 223
    return-void
.end method

.method public setFullImageUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 326
    iput-object p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->FullImageUrl:Ljava/lang/String;

    .line 327
    return-void
.end method

.method public setHasWinner(Z)V
    .registers 2

    .prologue
    .line 270
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->HasWinner:Z

    .line 271
    return-void
.end method

.method public setID(I)V
    .registers 2

    .prologue
    .line 126
    iput p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->ID:I

    .line 127
    return-void
.end method

.method public setInstallAppIosSchema(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 430
    iput-object p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->InstallAppIosSchema:Ljava/lang/String;

    .line 431
    return-void
.end method

.method public setInstallAppUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 374
    iput-object p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->InstallAppUrl:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public setInstallPackageName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 406
    iput-object p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->InstallPackageName:Ljava/lang/String;

    .line 407
    return-void
.end method

.method public setInstalledAppDate(J)V
    .registers 4

    .prologue
    .line 366
    iput-wide p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->InstalledAppDate:J

    .line 367
    return-void
.end method

.method public setInstallingMessage(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 454
    iput-object p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->InstallingMessage:Ljava/lang/String;

    .line 455
    return-void
.end method

.method public setInterfaceDisplay(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 470
    iput-object p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->InterfaceDisplay:Ljava/lang/Object;

    .line 471
    return-void
.end method

.method public setIsCampaignTopup(Z)V
    .registers 2

    .prologue
    .line 510
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->IsCampaignTopup:Z

    .line 511
    return-void
.end method

.method public setIsConditionPass(Z)V
    .registers 2

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->IsConditionPass:Z

    .line 295
    return-void
.end method

.method public setIsInstalledApp(Z)V
    .registers 2

    .prologue
    .line 358
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->IsInstalledApp:Z

    .line 359
    return-void
.end method

.method public setIsNotAutoUse(Z)V
    .registers 2

    .prologue
    .line 518
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->IsNotAutoUse:Z

    .line 519
    return-void
.end method

.method public setIsShipped(Z)V
    .registers 2

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->IsShipped:Z

    .line 239
    return-void
.end method

.method public setIsSpecificPrintVoucher(Z)V
    .registers 2

    .prologue
    .line 286
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->IsSpecificPrintVoucher:Z

    .line 287
    return-void
.end method

.method public setIsUsed(Z)V
    .registers 2

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->IsUsed:Z

    .line 191
    return-void
.end method

.method public setIsWinner(Z)V
    .registers 2

    .prologue
    .line 254
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->IsWinner:Z

    .line 255
    return-void
.end method

.method public setItemNumber(I)V
    .registers 2

    .prologue
    .line 134
    iput p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->ItemNumber:I

    .line 135
    return-void
.end method

.method public setMinutesValidAfterUsed(I)V
    .registers 2

    .prologue
    .line 414
    iput p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->MinutesValidAfterUsed:I

    .line 415
    return-void
.end method

.method public setModifyDate(I)V
    .registers 2

    .prologue
    .line 302
    iput p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->ModifyDate:I

    .line 303
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 150
    iput-object p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->Name:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setOriginalPrice(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 494
    iput-object p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->OriginalPrice:Ljava/lang/Object;

    .line 495
    return-void
.end method

.method public setOtherPointPerUnit(I)V
    .registers 2

    .prologue
    .line 526
    iput p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->OtherPointPerUnit:I

    .line 527
    return-void
.end method

.method public setParcelNo(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 342
    iput-object p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->ParcelNo:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setParentCategoryID(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 542
    iput-object p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->ParentCategoryID:Ljava/lang/Object;

    .line 543
    return-void
.end method

.method public setPointPerUnit(I)V
    .registers 2

    .prologue
    .line 350
    iput p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->PointPerUnit:I

    .line 351
    return-void
.end method

.method public setPointType(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 478
    iput-object p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->PointType:Ljava/lang/Object;

    .line 479
    return-void
.end method

.method public setPricePerUnit(I)V
    .registers 2

    .prologue
    .line 486
    iput p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->PricePerUnit:I

    .line 487
    return-void
.end method

.method public setPrivilegeMessage(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 278
    iput-object p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->PrivilegeMessage:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setRedeemDate(I)V
    .registers 2

    .prologue
    .line 182
    iput p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->RedeemDate:I

    .line 183
    return-void
.end method

.method public setRedeemKey(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 142
    iput-object p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->RedeemKey:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setSerial(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 310
    iput-object p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->Serial:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public setShippedStatus(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 502
    iput-object p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->ShippedStatus:Ljava/lang/String;

    .line 503
    return-void
.end method

.method public setShippingDate(F)V
    .registers 2

    .prologue
    .line 246
    iput p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->ShippingDate:F

    .line 247
    return-void
.end method

.method public setStyleSize(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 398
    iput-object p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->StyleSize:Ljava/lang/Object;

    .line 399
    return-void
.end method

.method public setStyleType(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 390
    iput-object p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->StyleType:Ljava/lang/Object;

    .line 391
    return-void
.end method

.method public setType(I)V
    .registers 2

    .prologue
    .line 174
    iput p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->Type:I

    .line 175
    return-void
.end method

.method public setUsedDate(J)V
    .registers 4

    .prologue
    .line 198
    iput-wide p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->UsedDate:J

    .line 199
    return-void
.end method

.method public setVerifyTypeAndroid(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 446
    iput-object p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->VerifyTypeAndroid:Ljava/lang/String;

    .line 447
    return-void
.end method

.method public setVerifyTypeIos(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 438
    iput-object p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->VerifyTypeIos:Ljava/lang/String;

    .line 439
    return-void
.end method

.method public setVerifyingMessage(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 462
    iput-object p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->VerifyingMessage:Ljava/lang/String;

    .line 463
    return-void
.end method

.method public setVoucherExpireDate(I)V
    .registers 2

    .prologue
    .line 206
    iput p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->VoucherExpireDate:I

    .line 207
    return-void
.end method

.method public setWinningDate(F)V
    .registers 2

    .prologue
    .line 262
    iput p1, p0, Lcom/bzbs/marketplace/model/InstallAppModel;->WinningDate:F

    .line 263
    return-void
.end method
