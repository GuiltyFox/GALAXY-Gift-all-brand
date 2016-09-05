.class public Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;
.super Ljava/lang/Object;
.source "AddCartModel.java"


# instance fields
.field public AgencyId:I

.field public CampaignId:I

.field public CategoryID:I

.field public CrossAppCampaignId:Ljava/lang/String;

.field public DeliveryJson:Ljava/lang/String;

.field public Discount:I

.field public ExpireDate:I

.field public FullImageUrl:Ljava/lang/String;

.field public HasCrossApp:Z

.field public HashTagJson:Ljava/lang/String;

.field public IsSplitPointSystem:Z

.field public IsSubCampaign:Z

.field public ItemCountSold:I

.field public Location:Ljava/lang/String;

.field public LocationAgencyId:I

.field public MasterCampaignId:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public NameEng:Ljava/lang/String;

.field public OtherPointPerUnit:I

.field public PartitionKey:Ljava/lang/String;

.field public PointPerUnit:I

.field public PointType:Ljava/lang/String;

.field public PricePerUnit:I

.field public Quantity:I

.field public QueueCount:I

.field public RedeemMostPerPerson:I

.field public RowKey:Ljava/lang/String;

.field public ShippingBy:I

.field public ShippingPayment:I

.field public StartDate:I

.field public StatusID:I

.field public StyleJson:Ljava/lang/String;

.field public Timestamp:I

.field public Type:I

.field public UserVisibility:Ljava/lang/String;

.field public Visibility:J

.field public Website:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgencyId()I
    .registers 2

    .prologue
    .line 359
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->AgencyId:I

    return v0
.end method

.method public getCampaignId()I
    .registers 2

    .prologue
    .line 259
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->CampaignId:I

    return v0
.end method

.method public getCategoryID()I
    .registers 2

    .prologue
    .line 291
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->CategoryID:I

    return v0
.end method

.method public getCrossAppCampaignId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->CrossAppCampaignId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryJson()Ljava/lang/String;
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->DeliveryJson:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscount()I
    .registers 2

    .prologue
    .line 275
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->Discount:I

    return v0
.end method

.method public getExpireDate()I
    .registers 2

    .prologue
    .line 303
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->ExpireDate:I

    return v0
.end method

.method public getFullImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->FullImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHasCrossApp()Z
    .registers 2

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->HasCrossApp:Z

    return v0
.end method

.method public getHashTagJson()Ljava/lang/String;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->HashTagJson:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSplitPointSystem()Z
    .registers 2

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->IsSplitPointSystem:Z

    return v0
.end method

.method public getIsSubCampaign()Z
    .registers 2

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->IsSubCampaign:Z

    return v0
.end method

.method public getItemCountSold()I
    .registers 2

    .prologue
    .line 279
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->ItemCountSold:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->Location:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationAgencyId()I
    .registers 2

    .prologue
    .line 343
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->LocationAgencyId:I

    return v0
.end method

.method public getMasterCampaignId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->MasterCampaignId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameEng()Ljava/lang/String;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->NameEng:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherPointPerUnit()I
    .registers 2

    .prologue
    .line 379
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->OtherPointPerUnit:I

    return v0
.end method

.method public getPartitionKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->PartitionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPointPerUnit()I
    .registers 2

    .prologue
    .line 271
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->PointPerUnit:I

    return v0
.end method

.method public getPointType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->PointType:Ljava/lang/String;

    return-object v0
.end method

.method public getPricePerUnit()I
    .registers 2

    .prologue
    .line 267
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->PricePerUnit:I

    return v0
.end method

.method public getQuantity()I
    .registers 2

    .prologue
    .line 263
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->Quantity:I

    return v0
.end method

.method public getQueueCount()I
    .registers 2

    .prologue
    .line 355
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->QueueCount:I

    return v0
.end method

.method public getRedeemMostPerPerson()I
    .registers 2

    .prologue
    .line 283
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->RedeemMostPerPerson:I

    return v0
.end method

.method public getRowKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->RowKey:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingBy()I
    .registers 2

    .prologue
    .line 323
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->ShippingBy:I

    return v0
.end method

.method public getShippingPayment()I
    .registers 2

    .prologue
    .line 319
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->ShippingPayment:I

    return v0
.end method

.method public getStartDate()I
    .registers 2

    .prologue
    .line 299
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->StartDate:I

    return v0
.end method

.method public getStatusID()I
    .registers 2

    .prologue
    .line 287
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->StatusID:I

    return v0
.end method

.method public getStyleJson()Ljava/lang/String;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->StyleJson:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()I
    .registers 2

    .prologue
    .line 403
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->Timestamp:I

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 295
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->Type:I

    return v0
.end method

.method public getUserVisibility()Ljava/lang/String;
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->UserVisibility:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()J
    .registers 3

    .prologue
    .line 363
    iget-wide v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->Visibility:J

    return-wide v0
.end method

.method public getWebsite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->Website:Ljava/lang/String;

    return-object v0
.end method

.method public setAgencyId(I)V
    .registers 2

    .prologue
    .line 211
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->AgencyId:I

    .line 212
    return-void
.end method

.method public setCampaignId(I)V
    .registers 2

    .prologue
    .line 111
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->CampaignId:I

    .line 112
    return-void
.end method

.method public setCategoryID(I)V
    .registers 2

    .prologue
    .line 143
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->CategoryID:I

    .line 144
    return-void
.end method

.method public setCrossAppCampaignId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 223
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->CrossAppCampaignId:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setDeliveryJson(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 167
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->DeliveryJson:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setDiscount(I)V
    .registers 2

    .prologue
    .line 127
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->Discount:I

    .line 128
    return-void
.end method

.method public setExpireDate(I)V
    .registers 2

    .prologue
    .line 155
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->ExpireDate:I

    .line 156
    return-void
.end method

.method public setFullImageUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 191
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->FullImageUrl:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setHasCrossApp(Z)V
    .registers 2

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->HasCrossApp:Z

    .line 228
    return-void
.end method

.method public setHashTagJson(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 203
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->HashTagJson:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setIsSplitPointSystem(Z)V
    .registers 2

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->IsSplitPointSystem:Z

    .line 200
    return-void
.end method

.method public setIsSubCampaign(Z)V
    .registers 2

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->IsSubCampaign:Z

    .line 220
    return-void
.end method

.method public setItemCountSold(I)V
    .registers 2

    .prologue
    .line 131
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->ItemCountSold:I

    .line 132
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 159
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->Location:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setLocationAgencyId(I)V
    .registers 2

    .prologue
    .line 195
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->LocationAgencyId:I

    .line 196
    return-void
.end method

.method public setMasterCampaignId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 179
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->MasterCampaignId:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 183
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->Name:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setNameEng(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 187
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->NameEng:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setOtherPointPerUnit(I)V
    .registers 2

    .prologue
    .line 231
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->OtherPointPerUnit:I

    .line 232
    return-void
.end method

.method public setPartitionKey(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 247
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->PartitionKey:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setPointPerUnit(I)V
    .registers 2

    .prologue
    .line 123
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->PointPerUnit:I

    .line 124
    return-void
.end method

.method public setPointType(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 235
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->PointType:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setPricePerUnit(I)V
    .registers 2

    .prologue
    .line 119
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->PricePerUnit:I

    .line 120
    return-void
.end method

.method public setQuantity(I)V
    .registers 2

    .prologue
    .line 115
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->Quantity:I

    .line 116
    return-void
.end method

.method public setQueueCount(I)V
    .registers 2

    .prologue
    .line 207
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->QueueCount:I

    .line 208
    return-void
.end method

.method public setRedeemMostPerPerson(I)V
    .registers 2

    .prologue
    .line 135
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->RedeemMostPerPerson:I

    .line 136
    return-void
.end method

.method public setRowKey(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 251
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->RowKey:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setShippingBy(I)V
    .registers 2

    .prologue
    .line 175
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->ShippingBy:I

    .line 176
    return-void
.end method

.method public setShippingPayment(I)V
    .registers 2

    .prologue
    .line 171
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->ShippingPayment:I

    .line 172
    return-void
.end method

.method public setStartDate(I)V
    .registers 2

    .prologue
    .line 151
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->StartDate:I

    .line 152
    return-void
.end method

.method public setStatusID(I)V
    .registers 2

    .prologue
    .line 139
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->StatusID:I

    .line 140
    return-void
.end method

.method public setStyleJson(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 163
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->StyleJson:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setTimestamp(I)V
    .registers 2

    .prologue
    .line 255
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->Timestamp:I

    .line 256
    return-void
.end method

.method public setType(I)V
    .registers 2

    .prologue
    .line 147
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->Type:I

    .line 148
    return-void
.end method

.method public setUserVisibility(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 243
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->UserVisibility:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setVisibility(J)V
    .registers 4

    .prologue
    .line 215
    iput-wide p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->Visibility:J

    .line 216
    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 239
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel$CampaignEntity;->Website:Ljava/lang/String;

    .line 240
    return-void
.end method
