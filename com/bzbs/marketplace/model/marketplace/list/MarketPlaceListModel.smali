.class public Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;
.super Ljava/lang/Object;
.source "MarketPlaceListModel.java"


# instance fields
.field public AgencyId:I

.field public AgencyName:Ljava/lang/String;

.field public Caption:Ljava/lang/String;

.field public CategoryId:I

.field public CategoryName:Ljava/lang/String;

.field public CategorySequence:I

.field public CrossAppCampaignId:Z

.field public CurrentDate:I

.field public DayProceed:I

.field public DayRemain:I

.field public Discount:D

.field public ExpireDate:F

.field public Extra:Ljava/lang/String;

.field public FullImageUrl:Ljava/lang/String;

.field public HasCrossApp:Z

.field public ID:Ljava/lang/String;

.field public IsCheckUserCampaignPermission:Z

.field public IsConditionPass:Z

.field public IsSponsor:Z

.field public Like:I

.field public MasterCampaignId:Z

.field public ModifyDate:I

.field public Name:Ljava/lang/String;

.field public NextRedeemDate:Z

.field public OriginalPrice:D

.field public OtherPointPerUnit:D

.field public ParentCategoryId:Z

.field public PointPerUnit:D

.field public PointType:Ljava/lang/String;

.field public PricePerUnit:D

.field public Qty:D

.field public RankVote:Ljava/lang/String;

.field public Rating:D

.field public RedeemCount:Z

.field public RedeemMedia:I

.field public RedeemMostPerPerson:D

.field public TracesJson:Z

.field public Type:Ljava/lang/String;

.field public UserLevel:Z

.field public UserVisibility:Z

.field public Vote:I

.field public Website:Ljava/lang/String;

.field public footer:Z

.field public header:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-boolean v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->footer:Z

    .line 98
    iput-boolean v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->header:Z

    return-void
.end method


# virtual methods
.method public getAgencyId()I
    .registers 2

    .prologue
    .line 293
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->AgencyId:I

    return v0
.end method

.method public getAgencyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->AgencyName:Ljava/lang/String;

    return-object v0
.end method

.method public getCaption()Ljava/lang/String;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->Caption:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()I
    .registers 2

    .prologue
    .line 413
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->CategoryId:I

    return v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->CategoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getCategorySequence()I
    .registers 2

    .prologue
    .line 421
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->CategorySequence:I

    return v0
.end method

.method public getCrossAppCampaignId()Z
    .registers 2

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->CrossAppCampaignId:Z

    return v0
.end method

.method public getCurrentDate()I
    .registers 2

    .prologue
    .line 325
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->CurrentDate:I

    return v0
.end method

.method public getDayProceed()I
    .registers 2

    .prologue
    .line 305
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->DayProceed:I

    return v0
.end method

.method public getDayRemain()I
    .registers 2

    .prologue
    .line 309
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->DayRemain:I

    return v0
.end method

.method public getDiscount()D
    .registers 3

    .prologue
    .line 357
    iget-wide v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->Discount:D

    return-wide v0
.end method

.method public getExpireDate()F
    .registers 2

    .prologue
    .line 385
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->ExpireDate:F

    return v0
.end method

.method public getExtra()Ljava/lang/String;
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->Extra:Ljava/lang/String;

    return-object v0
.end method

.method public getFullImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->FullImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHasCrossApp()Z
    .registers 2

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->HasCrossApp:Z

    return v0
.end method

.method public getID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCheckUserCampaignPermission()Z
    .registers 2

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->IsCheckUserCampaignPermission:Z

    return v0
.end method

.method public getIsConditionPass()Z
    .registers 2

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->IsConditionPass:Z

    return v0
.end method

.method public getIsSponsor()Z
    .registers 2

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->IsSponsor:Z

    return v0
.end method

.method public getLike()I
    .registers 2

    .prologue
    .line 441
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->Like:I

    return v0
.end method

.method public getMasterCampaignId()Z
    .registers 2

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->MasterCampaignId:Z

    return v0
.end method

.method public getModifyDate()I
    .registers 2

    .prologue
    .line 361
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->ModifyDate:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextRedeemDate()Z
    .registers 2

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->NextRedeemDate:Z

    return v0
.end method

.method public getOriginalPrice()D
    .registers 3

    .prologue
    .line 393
    iget-wide v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->OriginalPrice:D

    return-wide v0
.end method

.method public getOtherPointPerUnit()D
    .registers 3

    .prologue
    .line 445
    iget-wide v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->OtherPointPerUnit:D

    return-wide v0
.end method

.method public getParentCategoryId()Z
    .registers 2

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->ParentCategoryId:Z

    return v0
.end method

.method public getPointPerUnit()D
    .registers 3

    .prologue
    .line 349
    iget-wide v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->PointPerUnit:D

    return-wide v0
.end method

.method public getPointType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->PointType:Ljava/lang/String;

    return-object v0
.end method

.method public getPricePerUnit()D
    .registers 3

    .prologue
    .line 353
    iget-wide v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->PricePerUnit:D

    return-wide v0
.end method

.method public getQty()D
    .registers 3

    .prologue
    .line 313
    iget-wide v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->Qty:D

    return-wide v0
.end method

.method public getRankVote()Ljava/lang/String;
    .registers 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->RankVote:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()D
    .registers 3

    .prologue
    .line 337
    iget-wide v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->Rating:D

    return-wide v0
.end method

.method public getRedeemCount()Z
    .registers 2

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->RedeemCount:Z

    return v0
.end method

.method public getRedeemMedia()I
    .registers 2

    .prologue
    .line 373
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->RedeemMedia:I

    return v0
.end method

.method public getRedeemMostPerPerson()D
    .registers 3

    .prologue
    .line 317
    iget-wide v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->RedeemMostPerPerson:D

    return-wide v0
.end method

.method public getTracesJson()Z
    .registers 2

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->TracesJson:Z

    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->Type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLevel()Z
    .registers 2

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->UserLevel:Z

    return v0
.end method

.method public getUserVisibility()Z
    .registers 2

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->UserVisibility:Z

    return v0
.end method

.method public getVote()I
    .registers 2

    .prologue
    .line 437
    iget v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->Vote:I

    return v0
.end method

.method public getWebsite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->Website:Ljava/lang/String;

    return-object v0
.end method

.method public isFooter()Z
    .registers 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->footer:Z

    return v0
.end method

.method public isHeader()Z
    .registers 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->header:Z

    return v0
.end method

.method public setAgencyId(I)V
    .registers 2

    .prologue
    .line 125
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->AgencyId:I

    .line 126
    return-void
.end method

.method public setAgencyName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 129
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->AgencyName:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setCaption(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 201
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->Caption:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setCategoryId(I)V
    .registers 2

    .prologue
    .line 245
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->CategoryId:I

    .line 246
    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 249
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->CategoryName:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setCategorySequence(I)V
    .registers 2

    .prologue
    .line 253
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->CategorySequence:I

    .line 254
    return-void
.end method

.method public setCrossAppCampaignId(Z)V
    .registers 2

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->CrossAppCampaignId:Z

    .line 238
    return-void
.end method

.method public setCurrentDate(I)V
    .registers 2

    .prologue
    .line 157
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->CurrentDate:I

    .line 158
    return-void
.end method

.method public setDayProceed(I)V
    .registers 2

    .prologue
    .line 137
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->DayProceed:I

    .line 138
    return-void
.end method

.method public setDayRemain(I)V
    .registers 2

    .prologue
    .line 141
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->DayRemain:I

    .line 142
    return-void
.end method

.method public setDiscount(D)V
    .registers 4

    .prologue
    .line 189
    iput-wide p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->Discount:D

    .line 190
    return-void
.end method

.method public setExpireDate(F)V
    .registers 2

    .prologue
    .line 217
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->ExpireDate:F

    .line 218
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 221
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->Extra:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setFooter(Z)V
    .registers 2

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->footer:Z

    .line 114
    return-void
.end method

.method public setFullImageUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 213
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->FullImageUrl:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setHasCrossApp(Z)V
    .registers 2

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->HasCrossApp:Z

    .line 242
    return-void
.end method

.method public setHeader(Z)V
    .registers 2

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->header:Z

    .line 106
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->ID:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setIsCheckUserCampaignPermission(Z)V
    .registers 2

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->IsCheckUserCampaignPermission:Z

    .line 230
    return-void
.end method

.method public setIsConditionPass(Z)V
    .registers 2

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->IsConditionPass:Z

    .line 134
    return-void
.end method

.method public setIsSponsor(Z)V
    .registers 2

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->IsSponsor:Z

    .line 210
    return-void
.end method

.method public setLike(I)V
    .registers 2

    .prologue
    .line 273
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->Like:I

    .line 274
    return-void
.end method

.method public setMasterCampaignId(Z)V
    .registers 2

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->MasterCampaignId:Z

    .line 262
    return-void
.end method

.method public setModifyDate(I)V
    .registers 2

    .prologue
    .line 193
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->ModifyDate:I

    .line 194
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->Name:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setNextRedeemDate(Z)V
    .registers 2

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->NextRedeemDate:Z

    .line 162
    return-void
.end method

.method public setOriginalPrice(D)V
    .registers 4

    .prologue
    .line 225
    iput-wide p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->OriginalPrice:D

    .line 226
    return-void
.end method

.method public setOtherPointPerUnit(D)V
    .registers 4

    .prologue
    .line 277
    iput-wide p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->OtherPointPerUnit:D

    .line 278
    return-void
.end method

.method public setParentCategoryId(Z)V
    .registers 2

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->ParentCategoryId:Z

    .line 258
    return-void
.end method

.method public setPointPerUnit(D)V
    .registers 4

    .prologue
    .line 181
    iput-wide p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->PointPerUnit:D

    .line 182
    return-void
.end method

.method public setPointType(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 233
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->PointType:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setPricePerUnit(D)V
    .registers 4

    .prologue
    .line 185
    iput-wide p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->PricePerUnit:D

    .line 186
    return-void
.end method

.method public setQty(D)V
    .registers 4

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->Qty:D

    .line 146
    return-void
.end method

.method public setRankVote(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 265
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->RankVote:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setRating(D)V
    .registers 4

    .prologue
    .line 169
    iput-wide p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->Rating:D

    .line 170
    return-void
.end method

.method public setRedeemCount(Z)V
    .registers 2

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->RedeemCount:Z

    .line 154
    return-void
.end method

.method public setRedeemMedia(I)V
    .registers 2

    .prologue
    .line 205
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->RedeemMedia:I

    .line 206
    return-void
.end method

.method public setRedeemMostPerPerson(D)V
    .registers 4

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->RedeemMostPerPerson:D

    .line 150
    return-void
.end method

.method public setTracesJson(Z)V
    .registers 2

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->TracesJson:Z

    .line 166
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 197
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->Type:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setUserLevel(Z)V
    .registers 2

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->UserLevel:Z

    .line 174
    return-void
.end method

.method public setUserVisibility(Z)V
    .registers 2

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->UserVisibility:Z

    .line 178
    return-void
.end method

.method public setVote(I)V
    .registers 2

    .prologue
    .line 269
    iput p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->Vote:I

    .line 270
    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 281
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->Website:Ljava/lang/String;

    .line 282
    return-void
.end method
