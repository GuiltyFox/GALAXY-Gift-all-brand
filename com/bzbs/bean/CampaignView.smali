.class public Lcom/bzbs/bean/CampaignView;
.super Ljava/lang/Object;
.source "CampaignView.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


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

.field public CategoryDashboardSize:Ljava/lang/String;

.field public CategoryID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CategoryID"
    .end annotation
.end field

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

.field public Delivered:Ljava/lang/String;

.field public Detail:Ljava/lang/String;

.field public Discount:Ljava/lang/String;

.field public ExpireDate:Ljava/lang/String;

.field public ExpireIn:J

.field public FanPageId:Ljava/lang/String;

.field public FullImageUrl:Ljava/lang/String;

.field public ID:Ljava/lang/String;

.field public InterfaceDisplay:Ljava/lang/String;

.field public IsConditionPass:Z

.field public IsLike:Z

.field public IsSpecificPrintVoucher:Z

.field public ItemCountSold:I

.field public ItemRemain:I

.field public Location:Ljava/lang/String;

.field public LocationAgencyId:Ljava/lang/String;

.field public MarketGalleryView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/MarketGalleryView;",
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

.field public PeopleDislike:I

.field public PeopleLike:I

.field public PointPerUnit:Ljava/lang/String;

.field public PointType:Ljava/lang/String;

.field public PricePerUnit:Ljava/lang/String;

.field public Qty:I

.field public Quantity:I

.field public Rating:Ljava/lang/String;

.field public RedeemCount:I

.field public RedeemMedia:I

.field public RedeemMostPerPerson:I

.field public ReferenceCode:Ljava/lang/String;

.field public Score:Ljava/lang/String;

.field public SoldOutDate:J

.field public StartDate:Ljava/lang/String;

.field public StatusID:Ljava/lang/String;

.field public TermsAndConditions:Ljava/lang/String;

.field public TracePlanId:Ljava/lang/String;

.field public TracesJson:Ljava/lang/String;

.field public Type:Ljava/lang/String;

.field public Under18:Ljava/lang/String;

.field public UserLevel:Ljava/lang/String;

.field public Value:Ljava/lang/String;

.field public VoucherExpireDate:J

.field public Website:Ljava/lang/String;

.field public campaignExtra:Lcom/bzbs/bean/CampaignExtra;

.field public campaignExtra_video_download_uri:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public id:I

.field public isFromNoti:Z

.field jsonExtra:Ljava/lang/String;

.field public link:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public promotion_price:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignView;->CategoryDashboardSize:Ljava/lang/String;

    .line 74
    iput-boolean v1, p0, Lcom/bzbs/bean/CampaignView;->isFromNoti:Z

    .line 75
    iput v1, p0, Lcom/bzbs/bean/CampaignView;->ItemRemain:I

    .line 83
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignView;->ConditionAlert:Ljava/lang/String;

    .line 92
    iput v1, p0, Lcom/bzbs/bean/CampaignView;->RedeemMedia:I

    .line 93
    iput v1, p0, Lcom/bzbs/bean/CampaignView;->ConditionAlertID:I

    .line 94
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignView;->Barcode:Ljava/lang/String;

    .line 95
    iput v1, p0, Lcom/bzbs/bean/CampaignView;->MinutesValidAfterUsed:I

    .line 96
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    .line 98
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    .line 103
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignView;->campaignExtra_video_download_uri:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignView;->InterfaceDisplay:Ljava/lang/String;

    .line 105
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignView;->PointType:Ljava/lang/String;

    .line 110
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignView;->icon:Ljava/lang/String;

    .line 111
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignView;->title:Ljava/lang/String;

    .line 112
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignView;->price:Ljava/lang/String;

    .line 113
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignView;->description:Ljava/lang/String;

    .line 114
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignView;->link:Ljava/lang/String;

    .line 115
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignView;->promotion_price:Ljava/lang/String;

    .line 119
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignView;->jsonExtra:Ljava/lang/String;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    .line 239
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 10
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x0

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->CategoryDashboardSize:Ljava/lang/String;

    .line 74
    iput-boolean v6, p0, Lcom/bzbs/bean/CampaignView;->isFromNoti:Z

    .line 75
    iput v6, p0, Lcom/bzbs/bean/CampaignView;->ItemRemain:I

    .line 83
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->ConditionAlert:Ljava/lang/String;

    .line 92
    iput v6, p0, Lcom/bzbs/bean/CampaignView;->RedeemMedia:I

    .line 93
    iput v6, p0, Lcom/bzbs/bean/CampaignView;->ConditionAlertID:I

    .line 94
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->Barcode:Ljava/lang/String;

    .line 95
    iput v6, p0, Lcom/bzbs/bean/CampaignView;->MinutesValidAfterUsed:I

    .line 96
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    .line 98
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    .line 102
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    .line 103
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->campaignExtra_video_download_uri:Ljava/lang/String;

    .line 104
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->InterfaceDisplay:Ljava/lang/String;

    .line 105
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->PointType:Ljava/lang/String;

    .line 110
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->icon:Ljava/lang/String;

    .line 111
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->title:Ljava/lang/String;

    .line 112
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->price:Ljava/lang/String;

    .line 113
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->description:Ljava/lang/String;

    .line 114
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->link:Ljava/lang/String;

    .line 115
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->promotion_price:Ljava/lang/String;

    .line 119
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->jsonExtra:Ljava/lang/String;

    .line 235
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    .line 314
    const-string/jumbo v5, "AgencyName"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->AgencyName:Ljava/lang/String;

    .line 315
    const-string/jumbo v5, "ID"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->ID:Ljava/lang/String;

    .line 316
    const-string/jumbo v5, "AgencyID"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->AgencyID:Ljava/lang/String;

    .line 317
    const-string/jumbo v5, "Name"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->Name:Ljava/lang/String;

    .line 318
    const-string/jumbo v5, "Detail"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->Detail:Ljava/lang/String;

    .line 319
    const-string/jumbo v5, "Condition"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->Condition:Ljava/lang/String;

    .line 320
    const-string/jumbo v5, "ReferenceCode"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->ReferenceCode:Ljava/lang/String;

    .line 321
    const-string/jumbo v5, "CategoryID"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->CategoryID:Ljava/lang/String;

    .line 322
    iget-object v5, p0, Lcom/bzbs/bean/CampaignView;->CategoryID:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ba

    iget-object v5, p0, Lcom/bzbs/bean/CampaignView;->CategoryID:Ljava/lang/String;

    if-nez v5, :cond_c3

    .line 323
    :cond_ba
    const-string/jumbo v5, "CategoryId"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->CategoryID:Ljava/lang/String;

    .line 325
    :cond_c3
    const-string/jumbo v5, "CategoryName"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->CategoryName:Ljava/lang/String;

    .line 326
    const-string/jumbo v5, "CategoryDashboardSize"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->CategoryDashboardSize:Ljava/lang/String;

    .line 327
    const-string/jumbo v5, "StartDate"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->StartDate:Ljava/lang/String;

    .line 328
    const-string/jumbo v5, "ExpireDate"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->ExpireDate:Ljava/lang/String;

    .line 329
    const-string/jumbo v5, "CurrentDate"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->CurrentDate:Ljava/lang/String;

    .line 330
    const-string/jumbo v5, "Location"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->Location:Ljava/lang/String;

    .line 331
    const-string/jumbo v5, "Website"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->Website:Ljava/lang/String;

    .line 332
    const-string/jumbo v5, "Discount"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->Discount:Ljava/lang/String;

    .line 333
    const-string/jumbo v5, "OriginalPrice"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->OriginalPrice:Ljava/lang/String;

    .line 334
    const-string/jumbo v5, "PricePerUnit"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->PricePerUnit:Ljava/lang/String;

    .line 335
    const-string/jumbo v5, "PointPerUnit"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->PointPerUnit:Ljava/lang/String;

    .line 336
    const-string/jumbo v5, "Rating"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->Rating:Ljava/lang/String;

    .line 337
    const-string/jumbo v5, "UserLevel"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->UserLevel:Ljava/lang/String;

    .line 338
    const-string/jumbo v5, "Quantity"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/bzbs/bean/CampaignView;->Quantity:I

    .line 339
    const-string/jumbo v5, "RedeemMostPerPerson"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/bzbs/bean/CampaignView;->RedeemMostPerPerson:I

    .line 340
    const-string/jumbo v5, "PeopleLike"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/bzbs/bean/CampaignView;->PeopleLike:I

    .line 341
    const-string/jumbo v5, "PeopleDislike"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/bzbs/bean/CampaignView;->PeopleDislike:I

    .line 342
    const-string/jumbo v5, "ItemCountSold"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/bzbs/bean/CampaignView;->ItemCountSold:I

    .line 343
    const-string/jumbo v5, "Under18"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->Under18:Ljava/lang/String;

    .line 344
    const-string/jumbo v5, "Delivered"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->Delivered:Ljava/lang/String;

    .line 345
    const-string/jumbo v5, "StatusID"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->StatusID:Ljava/lang/String;

    .line 346
    const-string/jumbo v5, "TermsAndConditions"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->TermsAndConditions:Ljava/lang/String;

    .line 347
    const-string/jumbo v5, "CreateDate"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->CreateDate:Ljava/lang/String;

    .line 348
    const-string/jumbo v5, "CreateBy"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->CreateBy:Ljava/lang/String;

    .line 349
    const-string/jumbo v5, "ModifyDate"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->ModifyDate:Ljava/lang/String;

    .line 350
    const-string/jumbo v5, "ModifyBy"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->ModifyBy:Ljava/lang/String;

    .line 351
    const-string/jumbo v5, "Buzz"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/bzbs/bean/CampaignView;->Buzz:I

    .line 352
    const-string/jumbo v5, "Score"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->Score:Ljava/lang/String;

    .line 353
    const-string/jumbo v5, "Type"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->Type:Ljava/lang/String;

    .line 354
    const-string/jumbo v5, "AgencyAddress"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->AgencyAddress:Ljava/lang/String;

    .line 355
    const-string/jumbo v5, "AgencyCity"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->AgencyCity:Ljava/lang/String;

    .line 356
    const-string/jumbo v5, "AgencyCountry"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->AgencyCountry:Ljava/lang/String;

    .line 357
    const-string/jumbo v5, "AgencyZipCode"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->AgencyZipCode:Ljava/lang/String;

    .line 358
    const-string/jumbo v5, "AgencyTel"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->AgencyTel:Ljava/lang/String;

    .line 359
    const-string/jumbo v5, "AgencyWebsite"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->AgencyWebsite:Ljava/lang/String;

    .line 360
    const-string/jumbo v5, "DayRemain"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->DayRemain:Ljava/lang/String;

    .line 362
    const-string/jumbo v5, "TracesJson"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->TracesJson:Ljava/lang/String;

    .line 363
    const-string/jumbo v5, "IsConditionPass"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/bzbs/bean/CampaignView;->IsConditionPass:Z

    .line 365
    const-string/jumbo v5, "DayProceed"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/bzbs/bean/CampaignView;->DayProceed:I

    .line 367
    const-string/jumbo v5, "Caption"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->Caption:Ljava/lang/String;

    .line 369
    const-string/jumbo v5, "FanPageId"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->FanPageId:Ljava/lang/String;

    .line 370
    const-string/jumbo v5, "ExpireIn"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/bzbs/bean/CampaignView;->ExpireIn:J

    .line 371
    const-string/jumbo v5, "IsSpecificPrintVoucher"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/bzbs/bean/CampaignView;->IsSpecificPrintVoucher:Z

    .line 372
    const-string/jumbo v5, "VoucherExpireDate"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/bzbs/bean/CampaignView;->VoucherExpireDate:J

    .line 373
    const-string/jumbo v5, "LocationAgencyId"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->LocationAgencyId:Ljava/lang/String;

    .line 374
    const-string/jumbo v5, "NextRedeemDate"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/bzbs/bean/CampaignView;->NextRedeemDate:J

    .line 375
    const-string/jumbo v5, "RedeemCount"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/bzbs/bean/CampaignView;->RedeemCount:I

    .line 377
    const-string/jumbo v5, "ConditionAlert"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->ConditionAlert:Ljava/lang/String;

    .line 379
    const-string/jumbo v5, "IsLike"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/bzbs/bean/CampaignView;->IsLike:Z

    .line 381
    const-string/jumbo v5, "Qty"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/bzbs/bean/CampaignView;->Qty:I

    .line 383
    const-string/jumbo v5, "RedeemMedia"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/bzbs/bean/CampaignView;->RedeemMedia:I

    .line 384
    const-string/jumbo v5, "ConditionAlertID"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/bzbs/bean/CampaignView;->ConditionAlertID:I

    .line 385
    const-string/jumbo v5, "Barcode"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->Barcode:Ljava/lang/String;

    .line 386
    const-string/jumbo v5, "MinutesValidAfterUsed"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/bzbs/bean/CampaignView;->MinutesValidAfterUsed:I

    .line 387
    const-string/jumbo v5, "FullImageUrl"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    .line 388
    const-string/jumbo v5, "CustomInput"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->CustomInput:Ljava/lang/String;

    .line 389
    const-string/jumbo v5, "CustomCaption"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    .line 391
    const-string/jumbo v5, "InterfaceDisplay"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->InterfaceDisplay:Ljava/lang/String;

    .line 392
    const-string/jumbo v5, "PointType"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->PointType:Ljava/lang/String;

    .line 394
    const-string/jumbo v5, "SoldOutDate"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/bzbs/bean/CampaignView;->SoldOutDate:J

    .line 396
    const-string/jumbo v5, "Extra"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->jsonExtra:Ljava/lang/String;

    .line 397
    iget-object v5, p0, Lcom/bzbs/bean/CampaignView;->jsonExtra:Ljava/lang/String;

    if-eqz v5, :cond_311

    iget-object v5, p0, Lcom/bzbs/bean/CampaignView;->jsonExtra:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_311

    .line 399
    :try_start_303
    new-instance v5, Lcom/bzbs/bean/CampaignExtra;

    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/bzbs/bean/CampaignView;->jsonExtra:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/bzbs/bean/CampaignExtra;-><init>(Lorg/json/JSONObject;)V

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;
    :try_end_311
    .catch Lorg/json/JSONException; {:try_start_303 .. :try_end_311} :catch_3c3

    .line 406
    :cond_311
    :goto_311
    :try_start_311
    const-string/jumbo v5, "Pictures"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 408
    .local v2, "jsonPictures":Lorg/json/JSONArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    .line 409
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_320
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_338

    .line 410
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 411
    .local v1, "jsonPicture":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/bzbs/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    new-instance v6, Lcom/bzbs/bean/MarketGalleryView;

    invoke-direct {v6, v1}, Lcom/bzbs/bean/MarketGalleryView;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_334
    .catch Lorg/json/JSONException; {:try_start_311 .. :try_end_334} :catch_337

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_320

    .line 413
    .end local v0    # "i":I
    .end local v1    # "jsonPicture":Lorg/json/JSONObject;
    .end local v2    # "jsonPictures":Lorg/json/JSONArray;
    :catch_337
    move-exception v5

    .line 417
    :cond_338
    iget-object v5, p0, Lcom/bzbs/bean/CampaignView;->TracesJson:Ljava/lang/String;

    if-eqz v5, :cond_383

    iget-object v5, p0, Lcom/bzbs/bean/CampaignView;->TracesJson:Ljava/lang/String;

    const-string/jumbo v6, "<null>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_383

    iget-object v5, p0, Lcom/bzbs/bean/CampaignView;->TracesJson:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_383

    .line 419
    :try_start_352
    new-instance v4, Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/bzbs/bean/CampaignView;->TracesJson:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 420
    .local v4, "jsonTracesJsonArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_35a
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_383

    .line 421
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 423
    .local v3, "jsonTraceJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "TracePlanId"

    invoke-static {v3, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->TracePlanId:Ljava/lang/String;

    .line 424
    const-string/jumbo v5, "Value"

    invoke-static {v3, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->Value:Ljava/lang/String;

    .line 425
    const-string/jumbo v5, "Caption"

    invoke-static {v3, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->Caption:Ljava/lang/String;
    :try_end_37f
    .catch Lorg/json/JSONException; {:try_start_352 .. :try_end_37f} :catch_382

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_35a

    .line 427
    .end local v0    # "i":I
    .end local v3    # "jsonTraceJsonObject":Lorg/json/JSONObject;
    .end local v4    # "jsonTracesJsonArray":Lorg/json/JSONArray;
    :catch_382
    move-exception v5

    .line 435
    :cond_383
    const-string/jumbo v5, "id"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/bzbs/bean/CampaignView;->id:I

    .line 436
    const-string/jumbo v5, "icon"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->icon:Ljava/lang/String;

    .line 437
    const-string/jumbo v5, "title"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->title:Ljava/lang/String;

    .line 438
    const-string/jumbo v5, "price"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->price:Ljava/lang/String;

    .line 439
    const-string/jumbo v5, "description"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->description:Ljava/lang/String;

    .line 440
    const-string/jumbo v5, "link"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->link:Ljava/lang/String;

    .line 441
    const-string/jumbo v5, "promotion_price"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/CampaignView;->promotion_price:Ljava/lang/String;

    .line 445
    return-void

    .line 400
    :catch_3c3
    move-exception v5

    goto/16 :goto_311
.end method


# virtual methods
.method public FullImageUrlLarge()Ljava/lang/String;
    .registers 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/bzbs/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 150
    iget-object v0, p0, Lcom/bzbs/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, "?"

    const-string/jumbo v2, "-large?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_17
    return-object v0

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/picture?type=large&modifydate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->ModifyDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method public FullImageUrlMedium()Ljava/lang/String;
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/bzbs/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 141
    iget-object v0, p0, Lcom/bzbs/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    .line 143
    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/picture&modifydate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->ModifyDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public FullImageUrlSmall()Ljava/lang/String;
    .registers 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/bzbs/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 132
    iget-object v0, p0, Lcom/bzbs/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, "?"

    const-string/jumbo v2, "-small?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_17
    return-object v0

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/picture?type=small&modifydate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->ModifyDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method public FullImageUrlThumb()Ljava/lang/String;
    .registers 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/bzbs/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 123
    iget-object v0, p0, Lcom/bzbs/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, "?"

    const-string/jumbo v2, "-thumbnail?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_17
    return-object v0

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/picture?type=thumbnail&modifydate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->ModifyDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method public clone()Lcom/bzbs/bean/CampaignView;
    .registers 5

    .prologue
    .line 158
    new-instance v0, Lcom/bzbs/bean/CampaignView;

    invoke-direct {v0}, Lcom/bzbs/bean/CampaignView;-><init>()V

    .line 159
    .local v0, "newCampaign":Lcom/bzbs/bean/CampaignView;
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->AgencyName:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->AgencyName:Ljava/lang/String;

    .line 160
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->ID:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->ID:Ljava/lang/String;

    .line 161
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->AgencyID:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->AgencyID:Ljava/lang/String;

    .line 162
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->Name:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->Name:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->Detail:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->Detail:Ljava/lang/String;

    .line 164
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->Condition:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->Condition:Ljava/lang/String;

    .line 165
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->ReferenceCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->ReferenceCode:Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->UserLevel:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->UserLevel:Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->CategoryID:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->CategoryID:Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->CategoryName:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->CategoryName:Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->CategoryDashboardSize:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->CategoryDashboardSize:Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->StartDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->StartDate:Ljava/lang/String;

    .line 171
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->ExpireDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->ExpireDate:Ljava/lang/String;

    .line 172
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->CurrentDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->CurrentDate:Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->Location:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->Location:Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->Website:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->Website:Ljava/lang/String;

    .line 175
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->Discount:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->Discount:Ljava/lang/String;

    .line 176
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->OriginalPrice:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->OriginalPrice:Ljava/lang/String;

    .line 177
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->PricePerUnit:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->PricePerUnit:Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->PointPerUnit:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->PointPerUnit:Ljava/lang/String;

    .line 179
    iget v1, p0, Lcom/bzbs/bean/CampaignView;->Quantity:I

    iput v1, v0, Lcom/bzbs/bean/CampaignView;->Quantity:I

    .line 180
    iget v1, p0, Lcom/bzbs/bean/CampaignView;->RedeemMostPerPerson:I

    iput v1, v0, Lcom/bzbs/bean/CampaignView;->RedeemMostPerPerson:I

    .line 181
    iget v1, p0, Lcom/bzbs/bean/CampaignView;->PeopleLike:I

    iput v1, v0, Lcom/bzbs/bean/CampaignView;->PeopleLike:I

    .line 182
    iget v1, p0, Lcom/bzbs/bean/CampaignView;->PeopleDislike:I

    iput v1, v0, Lcom/bzbs/bean/CampaignView;->PeopleDislike:I

    .line 183
    iget v1, p0, Lcom/bzbs/bean/CampaignView;->ItemCountSold:I

    iput v1, v0, Lcom/bzbs/bean/CampaignView;->ItemCountSold:I

    .line 184
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->Under18:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->Under18:Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->Delivered:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->Delivered:Ljava/lang/String;

    .line 186
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->StatusID:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->StatusID:Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->TermsAndConditions:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->TermsAndConditions:Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->CreateDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->CreateDate:Ljava/lang/String;

    .line 189
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->CreateBy:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->CreateBy:Ljava/lang/String;

    .line 190
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->ModifyDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->ModifyDate:Ljava/lang/String;

    .line 191
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->ModifyBy:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->ModifyBy:Ljava/lang/String;

    .line 192
    iget v1, p0, Lcom/bzbs/bean/CampaignView;->Buzz:I

    iput v1, v0, Lcom/bzbs/bean/CampaignView;->Buzz:I

    .line 193
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->Score:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->Score:Ljava/lang/String;

    .line 194
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->Type:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->Type:Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->AgencyAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->AgencyAddress:Ljava/lang/String;

    .line 196
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->AgencyCity:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->AgencyCity:Ljava/lang/String;

    .line 197
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->AgencyCountry:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->AgencyCountry:Ljava/lang/String;

    .line 198
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->AgencyZipCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->AgencyZipCode:Ljava/lang/String;

    .line 199
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->AgencyTel:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->AgencyTel:Ljava/lang/String;

    .line 200
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->AgencyWebsite:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->AgencyWebsite:Ljava/lang/String;

    .line 201
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->DayRemain:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->DayRemain:Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->TracesJson:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->TracesJson:Ljava/lang/String;

    .line 204
    iget-boolean v1, p0, Lcom/bzbs/bean/CampaignView;->IsConditionPass:Z

    iput-boolean v1, v0, Lcom/bzbs/bean/CampaignView;->IsConditionPass:Z

    .line 205
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->TracePlanId:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->TracePlanId:Ljava/lang/String;

    .line 206
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->Value:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->Value:Ljava/lang/String;

    .line 208
    iget-boolean v1, p0, Lcom/bzbs/bean/CampaignView;->isFromNoti:Z

    iput-boolean v1, v0, Lcom/bzbs/bean/CampaignView;->isFromNoti:Z

    .line 209
    iget v1, p0, Lcom/bzbs/bean/CampaignView;->ItemRemain:I

    iput v1, v0, Lcom/bzbs/bean/CampaignView;->ItemRemain:I

    .line 211
    iget v1, p0, Lcom/bzbs/bean/CampaignView;->DayProceed:I

    iput v1, v0, Lcom/bzbs/bean/CampaignView;->DayProceed:I

    .line 212
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->FanPageId:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->FanPageId:Ljava/lang/String;

    .line 214
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->LocationAgencyId:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->LocationAgencyId:Ljava/lang/String;

    .line 215
    iget-wide v2, p0, Lcom/bzbs/bean/CampaignView;->NextRedeemDate:J

    iput-wide v2, v0, Lcom/bzbs/bean/CampaignView;->NextRedeemDate:J

    .line 217
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->ConditionAlert:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->ConditionAlert:Ljava/lang/String;

    .line 219
    iget-boolean v1, p0, Lcom/bzbs/bean/CampaignView;->IsLike:Z

    iput-boolean v1, v0, Lcom/bzbs/bean/CampaignView;->IsLike:Z

    .line 221
    iget v1, p0, Lcom/bzbs/bean/CampaignView;->Qty:I

    iput v1, v0, Lcom/bzbs/bean/CampaignView;->Qty:I

    .line 223
    iget v1, p0, Lcom/bzbs/bean/CampaignView;->RedeemMedia:I

    iput v1, v0, Lcom/bzbs/bean/CampaignView;->RedeemMedia:I

    .line 224
    iget v1, p0, Lcom/bzbs/bean/CampaignView;->ConditionAlertID:I

    iput v1, v0, Lcom/bzbs/bean/CampaignView;->ConditionAlertID:I

    .line 225
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->Barcode:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->Barcode:Ljava/lang/String;

    .line 226
    iget v1, p0, Lcom/bzbs/bean/CampaignView;->MinutesValidAfterUsed:I

    iput v1, v0, Lcom/bzbs/bean/CampaignView;->MinutesValidAfterUsed:I

    .line 227
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    .line 228
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->CustomInput:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->CustomInput:Ljava/lang/String;

    .line 229
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    .line 230
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->Rating:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->Rating:Ljava/lang/String;

    .line 231
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->campaignExtra_video_download_uri:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/CampaignView;->campaignExtra_video_download_uri:Ljava/lang/String;

    .line 232
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
    .line 16
    invoke-virtual {p0}, Lcom/bzbs/bean/CampaignView;->clone()Lcom/bzbs/bean/CampaignView;

    move-result-object v0

    return-object v0
.end method

.method public convertCampaign()Lcom/bzbs/lib/survey/bean/Campaign;
    .registers 5

    .prologue
    .line 242
    new-instance v0, Lcom/bzbs/lib/survey/bean/Campaign;

    invoke-direct {v0}, Lcom/bzbs/lib/survey/bean/Campaign;-><init>()V

    .line 243
    .local v0, "newCampaign":Lcom/bzbs/lib/survey/bean/Campaign;
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->AgencyName:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->AgencyName:Ljava/lang/String;

    .line 244
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->ID:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->ID:Ljava/lang/String;

    .line 245
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->AgencyID:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->AgencyID:Ljava/lang/String;

    .line 246
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->Name:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->Name:Ljava/lang/String;

    .line 247
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->Detail:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->Detail:Ljava/lang/String;

    .line 248
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->Condition:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->Condition:Ljava/lang/String;

    .line 249
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->ReferenceCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->ReferenceCode:Ljava/lang/String;

    .line 250
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->CategoryID:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->CategoryID:Ljava/lang/String;

    .line 251
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->CategoryName:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->CategoryName:Ljava/lang/String;

    .line 252
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->StartDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->StartDate:Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->ExpireDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->ExpireDate:Ljava/lang/String;

    .line 254
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->Location:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->Location:Ljava/lang/String;

    .line 255
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->Website:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->Website:Ljava/lang/String;

    .line 256
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->Discount:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->Discount:Ljava/lang/String;

    .line 257
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->OriginalPrice:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->OriginalPrice:Ljava/lang/String;

    .line 258
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->PricePerUnit:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->PricePerUnit:Ljava/lang/String;

    .line 259
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->PointPerUnit:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    .line 260
    iget v1, p0, Lcom/bzbs/bean/CampaignView;->PeopleLike:I

    iput v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->PeopleLike:I

    .line 261
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->Under18:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->Under18:Ljava/lang/String;

    .line 262
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->Delivered:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->Delivered:Ljava/lang/String;

    .line 263
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->StatusID:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->StatusID:Ljava/lang/String;

    .line 264
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->TermsAndConditions:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->TermsAndConditions:Ljava/lang/String;

    .line 265
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->CreateDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->CreateDate:Ljava/lang/String;

    .line 267
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->CreateBy:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->CreateBy:Ljava/lang/String;

    .line 268
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->ModifyDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->ModifyDate:Ljava/lang/String;

    .line 269
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->ModifyBy:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->ModifyBy:Ljava/lang/String;

    .line 270
    iget v1, p0, Lcom/bzbs/bean/CampaignView;->Buzz:I

    iput v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->Buzz:I

    .line 271
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->Score:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->Score:Ljava/lang/String;

    .line 272
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->Type:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->Type:Ljava/lang/String;

    .line 273
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->AgencyAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->AgencyAddress:Ljava/lang/String;

    .line 274
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->AgencyCity:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->AgencyCity:Ljava/lang/String;

    .line 275
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->AgencyCountry:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->AgencyCountry:Ljava/lang/String;

    .line 276
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->AgencyZipCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->AgencyZipCode:Ljava/lang/String;

    .line 277
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->AgencyTel:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->AgencyTel:Ljava/lang/String;

    .line 278
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->AgencyWebsite:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->AgencyWebsite:Ljava/lang/String;

    .line 279
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->DayRemain:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->DayRemain:Ljava/lang/String;

    .line 281
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->TracesJson:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->TracesJson:Ljava/lang/String;

    .line 282
    iget-boolean v1, p0, Lcom/bzbs/bean/CampaignView;->IsConditionPass:Z

    iput-boolean v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->IsConditionPass:Z

    .line 283
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->TracePlanId:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->TracePlanId:Ljava/lang/String;

    .line 284
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->Value:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->Value:Ljava/lang/String;

    .line 286
    iget-boolean v1, p0, Lcom/bzbs/bean/CampaignView;->isFromNoti:Z

    iput-boolean v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->isFromNoti:Z

    .line 287
    iget v1, p0, Lcom/bzbs/bean/CampaignView;->ItemRemain:I

    iput v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->ItemRemain:I

    .line 289
    iget v1, p0, Lcom/bzbs/bean/CampaignView;->DayProceed:I

    iput v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->DayProceed:I

    .line 290
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->FanPageId:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->FanPageId:Ljava/lang/String;

    .line 293
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->ConditionAlert:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    .line 295
    iget-boolean v1, p0, Lcom/bzbs/bean/CampaignView;->IsLike:Z

    iput-boolean v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->IsLike:Z

    .line 297
    iget v1, p0, Lcom/bzbs/bean/CampaignView;->Qty:I

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/bzbs/lib/survey/bean/Campaign;->Qty:J

    .line 303
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->FullImageUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    .line 304
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->CustomInput:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->CustomInput:Ljava/lang/String;

    .line 305
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->CustomCaption:Ljava/lang/String;

    .line 307
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->jsonExtra:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->jsonExtra:Ljava/lang/String;

    .line 308
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->jsonExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/bean/Campaign;->convertJsonExtra(Ljava/lang/String;)Lcom/bzbs/lib/survey/bean/CampaignExtra;

    .line 309
    iget-object v1, p0, Lcom/bzbs/bean/CampaignView;->campaignExtra_video_download_uri:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    .line 310
    return-object v0
.end method
