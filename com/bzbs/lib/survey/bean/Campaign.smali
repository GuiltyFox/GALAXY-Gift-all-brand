.class public Lcom/bzbs/lib/survey/bean/Campaign;
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
            "Lcom/bzbs/lib/survey/bean/CampaignGallery;",
            ">;"
        }
    .end annotation
.end field

.field public ModifyBy:Ljava/lang/String;

.field public ModifyDate:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public NextRedeemDate:J

.field public OriginalPrice:Ljava/lang/String;

.field public PeopleDislike:Ljava/lang/String;

.field public PeopleLike:I

.field public PointPerUnit:Ljava/lang/String;

.field public PointType:Ljava/lang/String;

.field public PricePerUnit:Ljava/lang/String;

.field public Qty:J

.field public Quantity:Ljava/lang/String;

.field public RedeemCount:I

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

.field public UseCount:I

.field public UserLevel:Ljava/lang/String;

.field public UserPackagePoints:J

.field public UserPackagePrices:Ljava/math/BigDecimal;

.field public UserRequirePoints:J

.field public UserSummaryPrices:Ljava/math/BigDecimal;

.field public Value:Ljava/lang/String;

.field public VoucherExpireDate:J

.field public Website:Ljava/lang/String;

.field public campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

.field public campaignExtra_video_download_uri:Ljava/lang/String;

.field public isFromNoti:Z

.field public jsonExtra:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->TracePlanId:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->Value:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->Caption:Ljava/lang/String;

    .line 70
    iput-boolean v1, p0, Lcom/bzbs/lib/survey/bean/Campaign;->isFromNoti:Z

    .line 71
    iput v1, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ItemRemain:I

    .line 77
    iput v1, p0, Lcom/bzbs/lib/survey/bean/Campaign;->UseCount:I

    .line 78
    iput v1, p0, Lcom/bzbs/lib/survey/bean/Campaign;->RedeemCount:I

    .line 88
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->CustomCaption:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->UserPackagePrices:Ljava/math/BigDecimal;

    .line 94
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->UserSummaryPrices:Ljava/math/BigDecimal;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    .line 97
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    .line 101
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->InterfaceDisplay:Ljava/lang/String;

    .line 102
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->PointType:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    .line 105
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->jsonExtra:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 11
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->TracePlanId:Ljava/lang/String;

    .line 65
    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->Value:Ljava/lang/String;

    .line 66
    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->Caption:Ljava/lang/String;

    .line 70
    iput-boolean v7, p0, Lcom/bzbs/lib/survey/bean/Campaign;->isFromNoti:Z

    .line 71
    iput v7, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ItemRemain:I

    .line 77
    iput v7, p0, Lcom/bzbs/lib/survey/bean/Campaign;->UseCount:I

    .line 78
    iput v7, p0, Lcom/bzbs/lib/survey/bean/Campaign;->RedeemCount:I

    .line 88
    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->CustomCaption:Ljava/lang/String;

    .line 93
    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v7}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->UserPackagePrices:Ljava/math/BigDecimal;

    .line 94
    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v7}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->UserSummaryPrices:Ljava/math/BigDecimal;

    .line 96
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    .line 97
    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    .line 99
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    .line 101
    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->InterfaceDisplay:Ljava/lang/String;

    .line 102
    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->PointType:Ljava/lang/String;

    .line 104
    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    .line 105
    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->jsonExtra:Ljava/lang/String;

    .line 157
    const-string/jumbo v6, "AgencyName"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->AgencyName:Ljava/lang/String;

    .line 158
    const-string/jumbo v6, "ID"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ID:Ljava/lang/String;

    .line 159
    const-string/jumbo v6, "AgencyID"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->AgencyID:Ljava/lang/String;

    .line 161
    iget-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->AgencyID:Ljava/lang/String;

    if-eqz v6, :cond_7b

    iget-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->AgencyID:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 162
    :cond_7b
    const-string/jumbo v6, "AgencyId"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->AgencyID:Ljava/lang/String;

    .line 165
    :cond_84
    const-string/jumbo v6, "Name"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->Name:Ljava/lang/String;

    .line 166
    const-string/jumbo v6, "Detail"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->Detail:Ljava/lang/String;

    .line 167
    const-string/jumbo v6, "Condition"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->Condition:Ljava/lang/String;

    .line 168
    const-string/jumbo v6, "ReferenceCode"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ReferenceCode:Ljava/lang/String;

    .line 169
    const-string/jumbo v6, "CategoryID"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->CategoryID:Ljava/lang/String;

    .line 170
    const-string/jumbo v6, "CategoryName"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->CategoryName:Ljava/lang/String;

    .line 171
    const-string/jumbo v6, "StartDate"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->StartDate:Ljava/lang/String;

    .line 172
    const-string/jumbo v6, "ExpireDate"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ExpireDate:Ljava/lang/String;

    .line 173
    const-string/jumbo v6, "Location"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->Location:Ljava/lang/String;

    .line 174
    const-string/jumbo v6, "Website"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->Website:Ljava/lang/String;

    .line 175
    const-string/jumbo v6, "Discount"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->Discount:Ljava/lang/String;

    .line 176
    const-string/jumbo v6, "OriginalPrice"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->OriginalPrice:Ljava/lang/String;

    .line 177
    const-string/jumbo v6, "PricePerUnit"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->PricePerUnit:Ljava/lang/String;

    .line 178
    const-string/jumbo v6, "PointPerUnit"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    .line 179
    const-string/jumbo v6, "Quantity"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->Quantity:Ljava/lang/String;

    .line 181
    const-string/jumbo v6, "NextRedeemDate"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->NextRedeemDate:J

    .line 182
    const-string/jumbo v6, "RedeemMostPerPerson"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->RedeemMostPerPerson:I

    .line 183
    const-string/jumbo v6, "PeopleLike"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->PeopleLike:I

    .line 184
    const-string/jumbo v6, "PeopleDislike"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->PeopleDislike:Ljava/lang/String;

    .line 185
    const-string/jumbo v6, "ItemCountSold"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ItemCountSold:Ljava/lang/String;

    .line 186
    const-string/jumbo v6, "Under18"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->Under18:Ljava/lang/String;

    .line 187
    const-string/jumbo v6, "Delivered"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->Delivered:Ljava/lang/String;

    .line 188
    const-string/jumbo v6, "StatusID"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->StatusID:Ljava/lang/String;

    .line 189
    const-string/jumbo v6, "TermsAndConditions"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->TermsAndConditions:Ljava/lang/String;

    .line 190
    const-string/jumbo v6, "CreateDate"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->CreateDate:Ljava/lang/String;

    .line 191
    const-string/jumbo v6, "CreateBy"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->CreateBy:Ljava/lang/String;

    .line 192
    const-string/jumbo v6, "ModifyDate"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ModifyDate:Ljava/lang/String;

    .line 193
    const-string/jumbo v6, "ModifyBy"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ModifyBy:Ljava/lang/String;

    .line 194
    const-string/jumbo v6, "Buzz"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->Buzz:I

    .line 195
    const-string/jumbo v6, "Score"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->Score:Ljava/lang/String;

    .line 196
    const-string/jumbo v6, "Type"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->Type:Ljava/lang/String;

    .line 197
    const-string/jumbo v6, "AgencyAddress"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->AgencyAddress:Ljava/lang/String;

    .line 198
    const-string/jumbo v6, "AgencyCity"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->AgencyCity:Ljava/lang/String;

    .line 199
    const-string/jumbo v6, "AgencyCountry"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->AgencyCountry:Ljava/lang/String;

    .line 200
    const-string/jumbo v6, "AgencyZipCode"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->AgencyZipCode:Ljava/lang/String;

    .line 201
    const-string/jumbo v6, "AgencyTel"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->AgencyTel:Ljava/lang/String;

    .line 202
    const-string/jumbo v6, "AgencyWebsite"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->AgencyWebsite:Ljava/lang/String;

    .line 203
    const-string/jumbo v6, "DayRemain"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->DayRemain:Ljava/lang/String;

    .line 205
    const-string/jumbo v6, "TracesJson"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->TracesJson:Ljava/lang/String;

    .line 206
    const-string/jumbo v6, "IsConditionPass"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->IsConditionPass:Z

    .line 208
    const-string/jumbo v6, "DayProceed"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->DayProceed:I

    .line 210
    const-string/jumbo v6, "FanPageId"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->FanPageId:Ljava/lang/String;

    .line 211
    const-string/jumbo v6, "tavatchai"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "FanPageId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/bzbs/lib/survey/bean/Campaign;->FanPageId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "AgencyID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/bzbs/lib/survey/bean/Campaign;->AgencyID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string/jumbo v6, "IsLike"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->IsLike:Z

    .line 215
    const-string/jumbo v6, "UseCount"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->UseCount:I

    .line 216
    const-string/jumbo v6, "RedeemCount"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->RedeemCount:I

    .line 217
    const-string/jumbo v6, "VoucherExpireDate"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->VoucherExpireDate:J

    .line 219
    const-string/jumbo v6, "Qty"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->Qty:J

    .line 221
    const-string/jumbo v6, "ConditionAlert"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    .line 222
    const-string/jumbo v6, "IsUsed"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->IsUsed:Z

    .line 223
    const-string/jumbo v6, "ExpireIn"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ExpireIn:J

    .line 224
    const-string/jumbo v6, "IsSpecificPrintVoucher"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->IsSpecificPrintVoucher:Z

    .line 225
    const-string/jumbo v6, "IsWinner"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->IsWinner:Z

    .line 226
    const-string/jumbo v6, "HasWinner"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->HasWinner:Z

    .line 228
    const-string/jumbo v6, "FullImageUrl"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    .line 229
    const-string/jumbo v6, "CustomInput"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->CustomInput:Ljava/lang/String;

    .line 230
    const-string/jumbo v6, "CustomCaption"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->CustomCaption:Ljava/lang/String;

    .line 232
    const-string/jumbo v6, "IsRequirePoints"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->IsRequirePoints:Z

    .line 233
    const-string/jumbo v6, "UserRequirePoints"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->UserRequirePoints:J

    .line 234
    const-string/jumbo v6, "UserPackagePoints"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->UserPackagePoints:J

    .line 235
    const-string/jumbo v6, "UserPackagePrices"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getBigDecimal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->UserPackagePrices:Ljava/math/BigDecimal;

    .line 236
    const-string/jumbo v6, "UserSummaryPrices"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getBigDecimal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->UserSummaryPrices:Ljava/math/BigDecimal;

    .line 238
    const-string/jumbo v6, "Extra"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->jsonExtra:Ljava/lang/String;

    .line 239
    iget-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->jsonExtra:Ljava/lang/String;

    if-eqz v6, :cond_314

    iget-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->jsonExtra:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_314

    .line 241
    :try_start_306
    new-instance v6, Lcom/bzbs/lib/survey/bean/CampaignExtra;

    new-instance v7, Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/bzbs/lib/survey/bean/Campaign;->jsonExtra:Ljava/lang/String;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/bzbs/lib/survey/bean/CampaignExtra;-><init>(Lorg/json/JSONObject;)V

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;
    :try_end_314
    .catch Lorg/json/JSONException; {:try_start_306 .. :try_end_314} :catch_33a

    .line 248
    :cond_314
    :goto_314
    :try_start_314
    const-string/jumbo v6, "Pictures"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 250
    .local v3, "jsonPictures":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    .line 251
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_323
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_379

    .line 252
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 253
    .local v2, "jsonPicture":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    new-instance v7, Lcom/bzbs/lib/survey/bean/CampaignGallery;

    invoke-direct {v7, v2}, Lcom/bzbs/lib/survey/bean/CampaignGallery;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_337
    .catch Lorg/json/JSONException; {:try_start_314 .. :try_end_337} :catch_35a

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_323

    .line 242
    .end local v1    # "i":I
    .end local v2    # "jsonPicture":Lorg/json/JSONObject;
    .end local v3    # "jsonPictures":Lorg/json/JSONArray;
    :catch_33a
    move-exception v0

    .line 243
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "MyLog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(JSONException|Extra):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_314

    .line 255
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_35a
    move-exception v0

    .line 256
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string/jumbo v6, "MyLog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(JSONException|Badge):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_379
    iget-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->TracesJson:Ljava/lang/String;

    if-eqz v6, :cond_3c4

    iget-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->TracesJson:Ljava/lang/String;

    const-string/jumbo v7, "<null>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3c4

    iget-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->TracesJson:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3c4

    .line 261
    :try_start_393
    new-instance v5, Lorg/json/JSONArray;

    iget-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->TracesJson:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 262
    .local v5, "jsonTracesJsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_39b
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_3c4

    .line 263
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 265
    .local v4, "jsonTraceJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "TracePlanId"

    invoke-static {v4, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->TracePlanId:Ljava/lang/String;

    .line 266
    const-string/jumbo v6, "Value"

    invoke-static {v4, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->Value:Ljava/lang/String;

    .line 267
    const-string/jumbo v6, "Caption"

    invoke-static {v4, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->Caption:Ljava/lang/String;
    :try_end_3c0
    .catch Lorg/json/JSONException; {:try_start_393 .. :try_end_3c0} :catch_3c3

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_39b

    .line 269
    .end local v1    # "i":I
    .end local v4    # "jsonTraceJsonObject":Lorg/json/JSONObject;
    .end local v5    # "jsonTracesJsonArray":Lorg/json/JSONArray;
    :catch_3c3
    move-exception v6

    .line 276
    :cond_3c4
    const-string/jumbo v6, "InterfaceDisplay"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->InterfaceDisplay:Ljava/lang/String;

    .line 277
    const-string/jumbo v6, "PointType"

    invoke-static {p1, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/bzbs/lib/survey/bean/Campaign;->PointType:Ljava/lang/String;

    .line 278
    return-void
.end method


# virtual methods
.method public FullImageUrlLarge()Ljava/lang/String;
    .registers 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 127
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, "?"

    const-string/jumbo v2, "-large?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_17
    return-object v0

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/lib/survey/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/picture?type=large"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method public FullImageUrlSmall()Ljava/lang/String;
    .registers 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 118
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, "?"

    const-string/jumbo v2, "-small?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_17
    return-object v0

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/lib/survey/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/picture?type=small"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method public FullImageUrlThumb()Ljava/lang/String;
    .registers 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 109
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, "?"

    const-string/jumbo v2, "-thumbnail?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_17
    return-object v0

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/lib/survey/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/picture?type=thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public convertJsonExtra(Ljava/lang/String;)Lcom/bzbs/lib/survey/bean/CampaignExtra;
    .registers 7
    .param p1, "jsonExtra"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 143
    if-eqz p1, :cond_1a

    const-string/jumbo v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 145
    :try_start_c
    new-instance v2, Lcom/bzbs/lib/survey/bean/CampaignExtra;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/bzbs/lib/survey/bean/CampaignExtra;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    .line 146
    iget-object v1, p0, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_1a} :catch_1b

    .line 152
    :cond_1a
    :goto_1a
    return-object v1

    .line 147
    :catch_1b
    move-exception v0

    .line 148
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "MyLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(JSONException|Extra):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method
