.class public Lic/buzzebeeslib/bean/Campaign;
.super Ljava/lang/Object;
.source "Campaign.java"

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

.field public Buzz:I

.field public Caption:Ljava/lang/String;

.field public CategoryID:Ljava/lang/String;

.field public CategoryName:Ljava/lang/String;

.field public Condition:Ljava/lang/String;

.field public ConditionAlert:Ljava/lang/String;

.field public CreateBy:Ljava/lang/String;

.field public CreateDate:Ljava/lang/String;

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

.field public HasWinner:Z

.field public ID:Ljava/lang/String;

.field public InterfaceDisplay:Ljava/lang/String;

.field public IsConditionPass:Z

.field public IsLike:Z

.field public IsRequirePoints:Z

.field public IsSpecificPrintVoucher:Z

.field public IsUsed:Z

.field public IsWinner:Z

.field public ItemCountSold:Ljava/lang/String;

.field public ItemRemain:I

.field public Location:Ljava/lang/String;

.field public MarketGalleryView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/CampaignGallery;",
            ">;"
        }
    .end annotation
.end field

.field public ModifyBy:Ljava/lang/String;

.field public ModifyDate:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public OriginalPrice:Ljava/lang/String;

.field public PeopleDislike:Ljava/lang/String;

.field public PeopleLike:I

.field public PointPerUnit:Ljava/lang/String;

.field public PointType:Ljava/lang/String;

.field public PricePerUnit:Ljava/lang/String;

.field public Qty:J

.field public Quantity:Ljava/lang/String;

.field public RedeemCount:I

.field public RedeemMostPerPerson:Ljava/lang/String;

.field public ReferenceCode:Ljava/lang/String;

.field public Score:Ljava/lang/String;

.field public StartDate:Ljava/lang/String;

.field public StatusID:Ljava/lang/String;

.field public TermsAndConditions:Ljava/lang/String;

.field public TracePlanId:Ljava/lang/String;

.field public TracesJson:Ljava/lang/String;

.field public Type:Ljava/lang/String;

.field public Under18:Ljava/lang/String;

.field public UseCount:I

.field public UserPackagePoints:J

.field public UserPackagePrices:Ljava/math/BigDecimal;

.field public UserRequirePoints:J

.field public UserSummaryPrices:Ljava/math/BigDecimal;

.field public Value:Ljava/lang/String;

.field public VoucherExpireDate:J

.field public Website:Ljava/lang/String;

.field public campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

.field public campaignExtra_video_download_uri:Ljava/lang/String;

.field public isFromNoti:Z

.field public jsonExtra:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/Campaign;->TracePlanId:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/Campaign;->Value:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/Campaign;->Caption:Ljava/lang/String;

    .line 67
    iput-boolean v1, p0, Lic/buzzebeeslib/bean/Campaign;->isFromNoti:Z

    .line 68
    iput v1, p0, Lic/buzzebeeslib/bean/Campaign;->ItemRemain:I

    .line 74
    iput v1, p0, Lic/buzzebeeslib/bean/Campaign;->UseCount:I

    .line 75
    iput v1, p0, Lic/buzzebeeslib/bean/Campaign;->RedeemCount:I

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/Campaign;->CustomCaption:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v0, p0, Lic/buzzebeeslib/bean/Campaign;->UserPackagePrices:Ljava/math/BigDecimal;

    .line 91
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v0, p0, Lic/buzzebeeslib/bean/Campaign;->UserSummaryPrices:Ljava/math/BigDecimal;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/Campaign;->InterfaceDisplay:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/Campaign;->PointType:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/Campaign;->jsonExtra:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 11
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v6, ""

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->TracePlanId:Ljava/lang/String;

    .line 62
    const-string v6, ""

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->Value:Ljava/lang/String;

    .line 63
    const-string v6, ""

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->Caption:Ljava/lang/String;

    .line 67
    iput-boolean v7, p0, Lic/buzzebeeslib/bean/Campaign;->isFromNoti:Z

    .line 68
    iput v7, p0, Lic/buzzebeeslib/bean/Campaign;->ItemRemain:I

    .line 74
    iput v7, p0, Lic/buzzebeeslib/bean/Campaign;->UseCount:I

    .line 75
    iput v7, p0, Lic/buzzebeeslib/bean/Campaign;->RedeemCount:I

    .line 85
    const-string v6, ""

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->CustomCaption:Ljava/lang/String;

    .line 90
    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v7}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->UserPackagePrices:Ljava/math/BigDecimal;

    .line 91
    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v7}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->UserSummaryPrices:Ljava/math/BigDecimal;

    .line 93
    const/4 v6, 0x0

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    .line 94
    const-string v6, ""

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    .line 96
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    .line 98
    const-string v6, ""

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->InterfaceDisplay:Ljava/lang/String;

    .line 99
    const-string v6, ""

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->PointType:Ljava/lang/String;

    .line 101
    const-string v6, ""

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    .line 102
    const-string v6, ""

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->jsonExtra:Ljava/lang/String;

    .line 154
    const-string v6, "AgencyName"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    .line 155
    const-string v6, "ID"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    .line 156
    const-string v6, "AgencyID"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->AgencyID:Ljava/lang/String;

    .line 158
    iget-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->AgencyID:Ljava/lang/String;

    if-eqz v6, :cond_6e

    iget-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->AgencyID:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_76

    .line 159
    :cond_6e
    const-string v6, "AgencyId"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->AgencyID:Ljava/lang/String;

    .line 162
    :cond_76
    const-string v6, "Name"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    .line 163
    const-string v6, "Detail"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->Detail:Ljava/lang/String;

    .line 164
    const-string v6, "Condition"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    .line 165
    const-string v6, "ReferenceCode"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->ReferenceCode:Ljava/lang/String;

    .line 166
    const-string v6, "CategoryID"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->CategoryID:Ljava/lang/String;

    .line 167
    const-string v6, "CategoryName"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->CategoryName:Ljava/lang/String;

    .line 168
    const-string v6, "StartDate"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->StartDate:Ljava/lang/String;

    .line 169
    const-string v6, "ExpireDate"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->ExpireDate:Ljava/lang/String;

    .line 170
    const-string v6, "Location"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->Location:Ljava/lang/String;

    .line 171
    const-string v6, "Website"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->Website:Ljava/lang/String;

    .line 172
    const-string v6, "Discount"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->Discount:Ljava/lang/String;

    .line 173
    const-string v6, "OriginalPrice"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->OriginalPrice:Ljava/lang/String;

    .line 174
    const-string v6, "PricePerUnit"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->PricePerUnit:Ljava/lang/String;

    .line 175
    const-string v6, "PointPerUnit"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    .line 176
    const-string v6, "Quantity"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->Quantity:Ljava/lang/String;

    .line 178
    const-string v6, "RedeemMostPerPerson"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->RedeemMostPerPerson:Ljava/lang/String;

    .line 179
    const-string v6, "PeopleLike"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    .line 180
    const-string v6, "PeopleDislike"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->PeopleDislike:Ljava/lang/String;

    .line 181
    const-string v6, "ItemCountSold"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->ItemCountSold:Ljava/lang/String;

    .line 182
    const-string v6, "Under18"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->Under18:Ljava/lang/String;

    .line 183
    const-string v6, "Delivered"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->Delivered:Ljava/lang/String;

    .line 184
    const-string v6, "StatusID"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->StatusID:Ljava/lang/String;

    .line 185
    const-string v6, "TermsAndConditions"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->TermsAndConditions:Ljava/lang/String;

    .line 186
    const-string v6, "CreateDate"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->CreateDate:Ljava/lang/String;

    .line 187
    const-string v6, "CreateBy"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->CreateBy:Ljava/lang/String;

    .line 188
    const-string v6, "ModifyDate"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->ModifyDate:Ljava/lang/String;

    .line 189
    const-string v6, "ModifyBy"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->ModifyBy:Ljava/lang/String;

    .line 190
    const-string v6, "Buzz"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lic/buzzebeeslib/bean/Campaign;->Buzz:I

    .line 191
    const-string v6, "Score"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->Score:Ljava/lang/String;

    .line 192
    const-string v6, "Type"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    .line 193
    const-string v6, "AgencyAddress"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->AgencyAddress:Ljava/lang/String;

    .line 194
    const-string v6, "AgencyCity"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->AgencyCity:Ljava/lang/String;

    .line 195
    const-string v6, "AgencyCountry"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->AgencyCountry:Ljava/lang/String;

    .line 196
    const-string v6, "AgencyZipCode"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->AgencyZipCode:Ljava/lang/String;

    .line 197
    const-string v6, "AgencyTel"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->AgencyTel:Ljava/lang/String;

    .line 198
    const-string v6, "AgencyWebsite"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->AgencyWebsite:Ljava/lang/String;

    .line 199
    const-string v6, "DayRemain"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->DayRemain:Ljava/lang/String;

    .line 201
    const-string v6, "TracesJson"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->TracesJson:Ljava/lang/String;

    .line 202
    const-string v6, "IsConditionPass"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lic/buzzebeeslib/bean/Campaign;->IsConditionPass:Z

    .line 204
    const-string v6, "DayProceed"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lic/buzzebeeslib/bean/Campaign;->DayProceed:I

    .line 206
    const-string v6, "FanPageId"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->FanPageId:Ljava/lang/String;

    .line 207
    const-string v6, "tavatchai"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "FanPageId "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lic/buzzebeeslib/bean/Campaign;->FanPageId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AgencyID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lic/buzzebeeslib/bean/Campaign;->AgencyID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v6, "IsLike"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lic/buzzebeeslib/bean/Campaign;->IsLike:Z

    .line 211
    const-string v6, "UseCount"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lic/buzzebeeslib/bean/Campaign;->UseCount:I

    .line 212
    const-string v6, "RedeemCount"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lic/buzzebeeslib/bean/Campaign;->RedeemCount:I

    .line 213
    const-string v6, "VoucherExpireDate"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lic/buzzebeeslib/bean/Campaign;->VoucherExpireDate:J

    .line 215
    const-string v6, "Qty"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lic/buzzebeeslib/bean/Campaign;->Qty:J

    .line 217
    const-string v6, "ConditionAlert"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    .line 218
    const-string v6, "IsUsed"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lic/buzzebeeslib/bean/Campaign;->IsUsed:Z

    .line 219
    const-string v6, "ExpireIn"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lic/buzzebeeslib/bean/Campaign;->ExpireIn:J

    .line 220
    const-string v6, "IsSpecificPrintVoucher"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lic/buzzebeeslib/bean/Campaign;->IsSpecificPrintVoucher:Z

    .line 221
    const-string v6, "IsWinner"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lic/buzzebeeslib/bean/Campaign;->IsWinner:Z

    .line 222
    const-string v6, "HasWinner"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lic/buzzebeeslib/bean/Campaign;->HasWinner:Z

    .line 224
    const-string v6, "FullImageUrl"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    .line 225
    const-string v6, "CustomInput"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->CustomInput:Ljava/lang/String;

    .line 226
    const-string v6, "CustomCaption"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->CustomCaption:Ljava/lang/String;

    .line 228
    const-string v6, "IsRequirePoints"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lic/buzzebeeslib/bean/Campaign;->IsRequirePoints:Z

    .line 229
    const-string v6, "UserRequirePoints"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lic/buzzebeeslib/bean/Campaign;->UserRequirePoints:J

    .line 230
    const-string v6, "UserPackagePoints"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lic/buzzebeeslib/bean/Campaign;->UserPackagePoints:J

    .line 231
    const-string v6, "UserPackagePrices"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getBigDecimal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->UserPackagePrices:Ljava/math/BigDecimal;

    .line 232
    const-string v6, "UserSummaryPrices"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getBigDecimal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->UserSummaryPrices:Ljava/math/BigDecimal;

    .line 234
    const-string v6, "Extra"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->jsonExtra:Ljava/lang/String;

    .line 235
    iget-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->jsonExtra:Ljava/lang/String;

    if-eqz v6, :cond_2b8

    iget-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->jsonExtra:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b8

    .line 237
    :try_start_2aa
    new-instance v6, Lic/buzzebeeslib/bean/CampaignExtra;

    new-instance v7, Lorg/json/JSONObject;

    iget-object v8, p0, Lic/buzzebeeslib/bean/Campaign;->jsonExtra:Ljava/lang/String;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lic/buzzebeeslib/bean/CampaignExtra;-><init>(Lorg/json/JSONObject;)V

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;
    :try_end_2b8
    .catch Lorg/json/JSONException; {:try_start_2aa .. :try_end_2b8} :catch_303

    .line 244
    :cond_2b8
    :goto_2b8
    :try_start_2b8
    const-string v6, "Pictures"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 246
    .local v3, "jsonPictures":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    .line 247
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2c6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_2c9
    .catch Lorg/json/JSONException; {:try_start_2b8 .. :try_end_2c9} :catch_32e

    move-result v6

    if-lt v1, v6, :cond_31d

    .line 255
    .end local v1    # "i":I
    .end local v3    # "jsonPictures":Lorg/json/JSONArray;
    :goto_2cc
    iget-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->TracesJson:Ljava/lang/String;

    if-eqz v6, :cond_2f2

    iget-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->TracesJson:Ljava/lang/String;

    const-string v7, "<null>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2f2

    iget-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->TracesJson:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2f2

    .line 257
    :try_start_2e4
    new-instance v5, Lorg/json/JSONArray;

    iget-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->TracesJson:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 258
    .local v5, "jsonTracesJsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2ec
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_2ef
    .catch Lorg/json/JSONException; {:try_start_2e4 .. :try_end_2ef} :catch_367

    move-result v6

    if-lt v1, v6, :cond_348

    .line 272
    .end local v1    # "i":I
    .end local v5    # "jsonTracesJsonArray":Lorg/json/JSONArray;
    :cond_2f2
    :goto_2f2
    const-string v6, "InterfaceDisplay"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->InterfaceDisplay:Ljava/lang/String;

    .line 273
    const-string v6, "PointType"

    invoke-static {p1, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->PointType:Ljava/lang/String;

    .line 274
    return-void

    .line 238
    :catch_303
    move-exception v0

    .line 239
    .local v0, "e":Lorg/json/JSONException;
    const-string v6, "MyLog"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(JSONException|Extra):"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b8

    .line 248
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "i":I
    .restart local v3    # "jsonPictures":Lorg/json/JSONArray;
    :cond_31d
    :try_start_31d
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 249
    .local v2, "jsonPicture":Lorg/json/JSONObject;
    iget-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    new-instance v7, Lic/buzzebeeslib/bean/CampaignGallery;

    invoke-direct {v7, v2}, Lic/buzzebeeslib/bean/CampaignGallery;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_32b
    .catch Lorg/json/JSONException; {:try_start_31d .. :try_end_32b} :catch_32e

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c6

    .line 251
    .end local v1    # "i":I
    .end local v2    # "jsonPicture":Lorg/json/JSONObject;
    .end local v3    # "jsonPictures":Lorg/json/JSONArray;
    :catch_32e
    move-exception v0

    .line 252
    .restart local v0    # "e":Lorg/json/JSONException;
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

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2cc

    .line 259
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "i":I
    .restart local v5    # "jsonTracesJsonArray":Lorg/json/JSONArray;
    :cond_348
    :try_start_348
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 261
    .local v4, "jsonTraceJsonObject":Lorg/json/JSONObject;
    const-string v6, "TracePlanId"

    invoke-static {v4, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->TracePlanId:Ljava/lang/String;

    .line 262
    const-string v6, "Value"

    invoke-static {v4, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->Value:Ljava/lang/String;

    .line 263
    const-string v6, "Caption"

    invoke-static {v4, v6}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/bean/Campaign;->Caption:Ljava/lang/String;
    :try_end_364
    .catch Lorg/json/JSONException; {:try_start_348 .. :try_end_364} :catch_367

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_2ec

    .line 265
    .end local v1    # "i":I
    .end local v4    # "jsonTraceJsonObject":Lorg/json/JSONObject;
    .end local v5    # "jsonTracesJsonArray":Lorg/json/JSONArray;
    :catch_367
    move-exception v6

    goto :goto_2f2
.end method


# virtual methods
.method public FullImageUrlLarge()Ljava/lang/String;
    .registers 4

    .prologue
    .line 123
    iget-object v0, p0, Lic/buzzebeeslib/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 124
    iget-object v0, p0, Lic/buzzebeeslib/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    const-string v1, "?"

    const-string v2, "-large?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_14
    return-object v0

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/picture?type=large"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public FullImageUrlSmall()Ljava/lang/String;
    .registers 4

    .prologue
    .line 114
    iget-object v0, p0, Lic/buzzebeeslib/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 115
    iget-object v0, p0, Lic/buzzebeeslib/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    const-string v1, "?"

    const-string v2, "-small?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_14
    return-object v0

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/picture?type=small"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public FullImageUrlThumb()Ljava/lang/String;
    .registers 4

    .prologue
    .line 105
    iget-object v0, p0, Lic/buzzebeeslib/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 106
    iget-object v0, p0, Lic/buzzebeeslib/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    const-string v1, "?"

    const-string v2, "-thumbnail?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_14
    return-object v0

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/picture?type=thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public convertJsonExtra(Ljava/lang/String;)Lic/buzzebeeslib/bean/CampaignExtra;
    .registers 7
    .param p1, "jsonExtra"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 140
    if-eqz p1, :cond_19

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 142
    :try_start_b
    new-instance v2, Lic/buzzebeeslib/bean/CampaignExtra;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lic/buzzebeeslib/bean/CampaignExtra;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    .line 143
    iget-object v1, p0, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_19} :catch_1a

    .line 149
    :cond_19
    :goto_19
    return-object v1

    .line 144
    :catch_1a
    move-exception v0

    .line 145
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "MyLog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(JSONException|Extra):"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method
