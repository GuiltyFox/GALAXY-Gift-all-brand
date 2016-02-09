.class public Lcom/samsung/privilege/bean/CampaignView;
.super Ljava/lang/Object;
.source "CampaignView.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public AgencyAddress:Ljava/lang/String;

.field public AgencyCity:Ljava/lang/String;

.field public AgencyCountry:Ljava/lang/String;

.field public AgencyID:Ljava/lang/String;

.field public AgencyName:Ljava/lang/String;

.field public AgencyTel:Ljava/lang/String;

.field public AgencyWebsite:Ljava/lang/String;

.field public AgencyZipCode:Ljava/lang/String;

.field public Barcode:Ljava/lang/String;

.field public Buzz:I

.field public Caption:Ljava/lang/String;

.field public CategoryID:Ljava/lang/String;

.field public CategoryName:Ljava/lang/String;

.field public Condition:Ljava/lang/String;

.field public ConditionAlert:Ljava/lang/String;

.field public ConditionAlertID:I

.field public CreateBy:Ljava/lang/String;

.field public CreateDate:Ljava/lang/String;

.field public CurrentDate:Ljava/lang/String;

.field public CustomCaption:Ljava/lang/String;

.field public CustomInput:Ljava/lang/String;

.field public DayProceed:I

.field public DayRemain:Ljava/lang/String;

.field public Delivered:Z

.field public Detail:Ljava/lang/String;

.field public Discount:Ljava/lang/String;

.field public ExpireDate:Ljava/lang/String;

.field public FanPageId:Ljava/lang/String;

.field public FullImageUrl:Ljava/lang/String;

.field public ID:Ljava/lang/String;

.field public IsConditionPass:Z

.field public IsLike:Z

.field public ItemCountSold:I

.field public ItemRemain:I

.field public Location:Ljava/lang/String;

.field public LocationAgencyId:Ljava/lang/String;

.field public MarketGalleryView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/MarketGalleryView;",
            ">;"
        }
    .end annotation
.end field

.field public MinutesValidAfterUsed:I

.field public ModifyBy:Ljava/lang/String;

.field public ModifyDate:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public NextRedeemDate:J

.field public OriginalPrice:Ljava/lang/String;

.field public ParentCategoryID:Ljava/lang/String;

.field public PeopleDislike:I

.field public PeopleLike:I

.field public PointPerUnit:Ljava/lang/String;

.field public PricePerUnit:Ljava/lang/String;

.field public Qty:I

.field public Quantity:I

.field public RedeemCount:I

.field public RedeemMedia:I

.field public RedeemMostPerPerson:I

.field public ReferenceCode:Ljava/lang/String;

.field public Score:Ljava/lang/String;

.field public StartDate:Ljava/lang/String;

.field public StatusID:Ljava/lang/String;

.field public TermsAndConditions:Ljava/lang/String;

.field public TracePlanId:Ljava/lang/String;

.field public TracesJson:Ljava/lang/String;

.field public Type:Ljava/lang/String;

.field public Under18:Ljava/lang/String;

.field public Value:Ljava/lang/String;

.field public VoucherExpireDate:J

.field public Website:Ljava/lang/String;

.field public isFromNoti:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/CampaignView;->isFromNoti:Z

    .line 69
    iput v1, p0, Lcom/samsung/privilege/bean/CampaignView;->ItemRemain:I

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignView;->ConditionAlert:Ljava/lang/String;

    .line 83
    iput v1, p0, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    .line 84
    iput v1, p0, Lcom/samsung/privilege/bean/CampaignView;->ConditionAlertID:I

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignView;->Barcode:Ljava/lang/String;

    .line 86
    iput v1, p0, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignView;->ParentCategoryID:Ljava/lang/String;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    .line 211
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 11
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v7, p0, Lcom/samsung/privilege/bean/CampaignView;->isFromNoti:Z

    .line 69
    iput v7, p0, Lcom/samsung/privilege/bean/CampaignView;->ItemRemain:I

    .line 77
    const-string v6, ""

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->ConditionAlert:Ljava/lang/String;

    .line 83
    iput v7, p0, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    .line 84
    iput v7, p0, Lcom/samsung/privilege/bean/CampaignView;->ConditionAlertID:I

    .line 85
    const-string v6, ""

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->Barcode:Ljava/lang/String;

    .line 86
    iput v7, p0, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    .line 87
    const-string v6, ""

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    .line 89
    const-string v6, ""

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    .line 91
    const-string v6, ""

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->ParentCategoryID:Ljava/lang/String;

    .line 207
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    .line 214
    const-string v6, "AgencyName"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    .line 215
    const-string v6, "ID"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    .line 216
    const-string v6, "AgencyID"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->AgencyID:Ljava/lang/String;

    .line 217
    const-string v6, "Name"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    .line 218
    const-string v6, "Detail"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->Detail:Ljava/lang/String;

    .line 219
    const-string v6, "Condition"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->Condition:Ljava/lang/String;

    .line 220
    const-string v6, "ReferenceCode"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->ReferenceCode:Ljava/lang/String;

    .line 221
    const-string v6, "CategoryID"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    .line 222
    const-string v6, "CategoryName"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->CategoryName:Ljava/lang/String;

    .line 223
    const-string v6, "StartDate"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->StartDate:Ljava/lang/String;

    .line 224
    const-string v6, "ExpireDate"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->ExpireDate:Ljava/lang/String;

    .line 225
    const-string v6, "CurrentDate"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->CurrentDate:Ljava/lang/String;

    .line 226
    const-string v6, "Location"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->Location:Ljava/lang/String;

    .line 227
    const-string v6, "Website"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    .line 228
    const-string v6, "Discount"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->Discount:Ljava/lang/String;

    .line 229
    const-string v6, "OriginalPrice"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->OriginalPrice:Ljava/lang/String;

    .line 230
    const-string v6, "PricePerUnit"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->PricePerUnit:Ljava/lang/String;

    .line 231
    const-string v6, "PointPerUnit"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->PointPerUnit:Ljava/lang/String;

    .line 232
    const-string v6, "Quantity"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/privilege/bean/CampaignView;->Quantity:I

    .line 233
    const-string v6, "RedeemMostPerPerson"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/privilege/bean/CampaignView;->RedeemMostPerPerson:I

    .line 234
    const-string v6, "PeopleLike"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/privilege/bean/CampaignView;->PeopleLike:I

    .line 235
    const-string v6, "PeopleDislike"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/privilege/bean/CampaignView;->PeopleDislike:I

    .line 236
    const-string v6, "ItemCountSold"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/privilege/bean/CampaignView;->ItemCountSold:I

    .line 237
    const-string v6, "Under18"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->Under18:Ljava/lang/String;

    .line 238
    const-string v6, "Delivered"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/privilege/bean/CampaignView;->Delivered:Z

    .line 239
    const-string v6, "StatusID"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->StatusID:Ljava/lang/String;

    .line 240
    const-string v6, "TermsAndConditions"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->TermsAndConditions:Ljava/lang/String;

    .line 241
    const-string v6, "CreateDate"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->CreateDate:Ljava/lang/String;

    .line 242
    const-string v6, "CreateBy"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->CreateBy:Ljava/lang/String;

    .line 243
    const-string v6, "ModifyDate"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->ModifyDate:Ljava/lang/String;

    .line 244
    const-string v6, "ModifyBy"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->ModifyBy:Ljava/lang/String;

    .line 245
    const-string v6, "Buzz"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/privilege/bean/CampaignView;->Buzz:I

    .line 246
    const-string v6, "Score"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->Score:Ljava/lang/String;

    .line 247
    const-string v6, "Type"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    .line 248
    const-string v6, "AgencyAddress"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->AgencyAddress:Ljava/lang/String;

    .line 249
    const-string v6, "AgencyCity"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->AgencyCity:Ljava/lang/String;

    .line 250
    const-string v6, "AgencyCountry"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->AgencyCountry:Ljava/lang/String;

    .line 251
    const-string v6, "AgencyZipCode"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->AgencyZipCode:Ljava/lang/String;

    .line 252
    const-string v6, "AgencyTel"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->AgencyTel:Ljava/lang/String;

    .line 253
    const-string v6, "AgencyWebsite"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->AgencyWebsite:Ljava/lang/String;

    .line 254
    const-string v6, "DayRemain"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->DayRemain:Ljava/lang/String;

    .line 255
    const-string v6, "VoucherExpireDate"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/privilege/bean/CampaignView;->VoucherExpireDate:J

    .line 257
    const-string v6, "TracesJson"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->TracesJson:Ljava/lang/String;

    .line 258
    const-string v6, "IsConditionPass"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/privilege/bean/CampaignView;->IsConditionPass:Z

    .line 260
    const-string v6, "DayProceed"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/privilege/bean/CampaignView;->DayProceed:I

    .line 262
    const-string v6, "Caption"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->Caption:Ljava/lang/String;

    .line 264
    const-string v6, "FanPageId"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->FanPageId:Ljava/lang/String;

    .line 266
    const-string v6, "LocationAgencyId"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->LocationAgencyId:Ljava/lang/String;

    .line 267
    const-string v6, "NextRedeemDate"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/privilege/bean/CampaignView;->NextRedeemDate:J

    .line 268
    const-string v6, "RedeemCount"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/privilege/bean/CampaignView;->RedeemCount:I

    .line 270
    const-string v6, "ConditionAlert"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->ConditionAlert:Ljava/lang/String;

    .line 272
    const-string v6, "IsLike"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/privilege/bean/CampaignView;->IsLike:Z

    .line 274
    const-string v6, "Qty"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/privilege/bean/CampaignView;->Qty:I

    .line 276
    const-string v6, "RedeemMedia"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    .line 277
    const-string v6, "ConditionAlertID"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/privilege/bean/CampaignView;->ConditionAlertID:I

    .line 278
    const-string v6, "Barcode"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->Barcode:Ljava/lang/String;

    .line 282
    const-string v6, "MinutesValidAfterUsed"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    .line 283
    const-string v6, "FullImageUrl"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    .line 284
    const-string v6, "CustomInput"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->CustomInput:Ljava/lang/String;

    .line 285
    const-string v6, "CustomCaption"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    .line 287
    const-string v6, "ParentCategoryID"

    invoke-static {p1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->ParentCategoryID:Ljava/lang/String;

    .line 290
    :try_start_21d
    const-string v6, "Pictures"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 292
    .local v3, "jsonPictures":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    .line 293
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_22e
    .catch Lorg/json/JSONException; {:try_start_21d .. :try_end_22e} :catch_269

    move-result v6

    if-lt v1, v6, :cond_258

    .line 301
    .end local v1    # "i":I
    .end local v3    # "jsonPictures":Lorg/json/JSONArray;
    :goto_231
    iget-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->TracesJson:Ljava/lang/String;

    if-eqz v6, :cond_257

    iget-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->TracesJson:Ljava/lang/String;

    const-string v7, "<null>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_257

    iget-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->TracesJson:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_257

    .line 303
    :try_start_249
    new-instance v5, Lorg/json/JSONArray;

    iget-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->TracesJson:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 304
    .local v5, "jsonTracesJsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_251
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_254
    .catch Lorg/json/JSONException; {:try_start_249 .. :try_end_254} :catch_2a2

    move-result v6

    if-lt v1, v6, :cond_283

    .line 317
    .end local v1    # "i":I
    .end local v5    # "jsonTracesJsonArray":Lorg/json/JSONArray;
    :cond_257
    :goto_257
    return-void

    .line 294
    .restart local v1    # "i":I
    .restart local v3    # "jsonPictures":Lorg/json/JSONArray;
    :cond_258
    :try_start_258
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 295
    .local v2, "jsonPicture":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    new-instance v7, Lcom/samsung/privilege/bean/MarketGalleryView;

    invoke-direct {v7, v2}, Lcom/samsung/privilege/bean/MarketGalleryView;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_266
    .catch Lorg/json/JSONException; {:try_start_258 .. :try_end_266} :catch_269

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_22b

    .line 297
    .end local v1    # "i":I
    .end local v2    # "jsonPicture":Lorg/json/JSONObject;
    .end local v3    # "jsonPictures":Lorg/json/JSONArray;
    :catch_269
    move-exception v0

    .line 298
    .local v0, "e":Lorg/json/JSONException;
    const-string v6, "MyLog"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(JSONException|Badge):"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_231

    .line 305
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "i":I
    .restart local v5    # "jsonTracesJsonArray":Lorg/json/JSONArray;
    :cond_283
    :try_start_283
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 307
    .local v4, "jsonTraceJsonObject":Lorg/json/JSONObject;
    const-string v6, "TracePlanId"

    invoke-static {v4, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->TracePlanId:Ljava/lang/String;

    .line 308
    const-string v6, "Value"

    invoke-static {v4, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->Value:Ljava/lang/String;

    .line 309
    const-string v6, "Caption"

    invoke-static {v4, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/bean/CampaignView;->Caption:Ljava/lang/String;
    :try_end_29f
    .catch Lorg/json/JSONException; {:try_start_283 .. :try_end_29f} :catch_2a2

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_251

    .line 311
    .end local v1    # "i":I
    .end local v4    # "jsonTraceJsonObject":Lorg/json/JSONObject;
    .end local v5    # "jsonTracesJsonArray":Lorg/json/JSONArray;
    :catch_2a2
    move-exception v6

    goto :goto_257
.end method


# virtual methods
.method public FullImageUrlLarge()Ljava/lang/String;
    .registers 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 122
    iget-object v0, p0, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    const-string v1, "?"

    const-string v2, "-large?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_14
    return-object v0

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/picture?type=large&modifydate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->ModifyDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public FullImageUrlMedium()Ljava/lang/String;
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 113
    iget-object v0, p0, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    .line 115
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/picture&modifydate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->ModifyDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public FullImageUrlSmall()Ljava/lang/String;
    .registers 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 104
    iget-object v0, p0, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    const-string v1, "?"

    const-string v2, "-small?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_14
    return-object v0

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/picture?type=small&modifydate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->ModifyDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public FullImageUrlThumb()Ljava/lang/String;
    .registers 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 95
    iget-object v0, p0, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    const-string v1, "?"

    const-string v2, "-thumbnail?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_14
    return-object v0

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/picture?type=thumbnail&modifydate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->ModifyDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public clone()Lcom/samsung/privilege/bean/CampaignView;
    .registers 4

    .prologue
    .line 130
    new-instance v0, Lcom/samsung/privilege/bean/CampaignView;

    invoke-direct {v0}, Lcom/samsung/privilege/bean/CampaignView;-><init>()V

    .line 131
    .local v0, "newCampaign":Lcom/samsung/privilege/bean/CampaignView;
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->AgencyID:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->AgencyID:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->Detail:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->Detail:Ljava/lang/String;

    .line 136
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->Condition:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->Condition:Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->ReferenceCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->ReferenceCode:Ljava/lang/String;

    .line 138
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    .line 139
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->CategoryName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->CategoryName:Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->StartDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->StartDate:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->ExpireDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->ExpireDate:Ljava/lang/String;

    .line 142
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->CurrentDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->CurrentDate:Ljava/lang/String;

    .line 143
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->Location:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->Location:Ljava/lang/String;

    .line 144
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->Discount:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->Discount:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->OriginalPrice:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->OriginalPrice:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->PricePerUnit:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->PricePerUnit:Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->PointPerUnit:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->PointPerUnit:Ljava/lang/String;

    .line 149
    iget v1, p0, Lcom/samsung/privilege/bean/CampaignView;->Quantity:I

    iput v1, v0, Lcom/samsung/privilege/bean/CampaignView;->Quantity:I

    .line 150
    iget v1, p0, Lcom/samsung/privilege/bean/CampaignView;->RedeemMostPerPerson:I

    iput v1, v0, Lcom/samsung/privilege/bean/CampaignView;->RedeemMostPerPerson:I

    .line 151
    iget v1, p0, Lcom/samsung/privilege/bean/CampaignView;->PeopleLike:I

    iput v1, v0, Lcom/samsung/privilege/bean/CampaignView;->PeopleLike:I

    .line 152
    iget v1, p0, Lcom/samsung/privilege/bean/CampaignView;->PeopleDislike:I

    iput v1, v0, Lcom/samsung/privilege/bean/CampaignView;->PeopleDislike:I

    .line 153
    iget v1, p0, Lcom/samsung/privilege/bean/CampaignView;->ItemCountSold:I

    iput v1, v0, Lcom/samsung/privilege/bean/CampaignView;->ItemCountSold:I

    .line 154
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->Under18:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->Under18:Ljava/lang/String;

    .line 155
    iget-boolean v1, p0, Lcom/samsung/privilege/bean/CampaignView;->Delivered:Z

    iput-boolean v1, v0, Lcom/samsung/privilege/bean/CampaignView;->Delivered:Z

    .line 156
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->StatusID:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->StatusID:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->TermsAndConditions:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->TermsAndConditions:Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->CreateDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->CreateDate:Ljava/lang/String;

    .line 159
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->CreateBy:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->CreateBy:Ljava/lang/String;

    .line 160
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->ModifyDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->ModifyDate:Ljava/lang/String;

    .line 161
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->ModifyBy:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->ModifyBy:Ljava/lang/String;

    .line 162
    iget v1, p0, Lcom/samsung/privilege/bean/CampaignView;->Buzz:I

    iput v1, v0, Lcom/samsung/privilege/bean/CampaignView;->Buzz:I

    .line 163
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->Score:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->Score:Ljava/lang/String;

    .line 164
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    .line 165
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->AgencyAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->AgencyAddress:Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->AgencyCity:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->AgencyCity:Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->AgencyCountry:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->AgencyCountry:Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->AgencyZipCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->AgencyZipCode:Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->AgencyTel:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->AgencyTel:Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->AgencyWebsite:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->AgencyWebsite:Ljava/lang/String;

    .line 171
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->DayRemain:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->DayRemain:Ljava/lang/String;

    .line 172
    iget-wide v1, p0, Lcom/samsung/privilege/bean/CampaignView;->VoucherExpireDate:J

    iput-wide v1, v0, Lcom/samsung/privilege/bean/CampaignView;->VoucherExpireDate:J

    .line 174
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->TracesJson:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->TracesJson:Ljava/lang/String;

    .line 175
    iget-boolean v1, p0, Lcom/samsung/privilege/bean/CampaignView;->IsConditionPass:Z

    iput-boolean v1, v0, Lcom/samsung/privilege/bean/CampaignView;->IsConditionPass:Z

    .line 176
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->TracePlanId:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->TracePlanId:Ljava/lang/String;

    .line 177
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->Value:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->Value:Ljava/lang/String;

    .line 179
    iget-boolean v1, p0, Lcom/samsung/privilege/bean/CampaignView;->isFromNoti:Z

    iput-boolean v1, v0, Lcom/samsung/privilege/bean/CampaignView;->isFromNoti:Z

    .line 180
    iget v1, p0, Lcom/samsung/privilege/bean/CampaignView;->ItemRemain:I

    iput v1, v0, Lcom/samsung/privilege/bean/CampaignView;->ItemRemain:I

    .line 182
    iget v1, p0, Lcom/samsung/privilege/bean/CampaignView;->DayProceed:I

    iput v1, v0, Lcom/samsung/privilege/bean/CampaignView;->DayProceed:I

    .line 183
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->FanPageId:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->FanPageId:Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->LocationAgencyId:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->LocationAgencyId:Ljava/lang/String;

    .line 186
    iget-wide v1, p0, Lcom/samsung/privilege/bean/CampaignView;->NextRedeemDate:J

    iput-wide v1, v0, Lcom/samsung/privilege/bean/CampaignView;->NextRedeemDate:J

    .line 188
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->ConditionAlert:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->ConditionAlert:Ljava/lang/String;

    .line 190
    iget-boolean v1, p0, Lcom/samsung/privilege/bean/CampaignView;->IsLike:Z

    iput-boolean v1, v0, Lcom/samsung/privilege/bean/CampaignView;->IsLike:Z

    .line 192
    iget v1, p0, Lcom/samsung/privilege/bean/CampaignView;->Qty:I

    iput v1, v0, Lcom/samsung/privilege/bean/CampaignView;->Qty:I

    .line 194
    iget v1, p0, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    iput v1, v0, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    .line 195
    iget v1, p0, Lcom/samsung/privilege/bean/CampaignView;->ConditionAlertID:I

    iput v1, v0, Lcom/samsung/privilege/bean/CampaignView;->ConditionAlertID:I

    .line 196
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->Barcode:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->Barcode:Ljava/lang/String;

    .line 197
    iget v1, p0, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    iput v1, v0, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    .line 198
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    .line 199
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->CustomInput:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->CustomInput:Ljava/lang/String;

    .line 200
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    .line 202
    iget-object v1, p0, Lcom/samsung/privilege/bean/CampaignView;->ParentCategoryID:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/CampaignView;->ParentCategoryID:Ljava/lang/String;

    .line 204
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/samsung/privilege/bean/CampaignView;->clone()Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v0

    return-object v0
.end method
