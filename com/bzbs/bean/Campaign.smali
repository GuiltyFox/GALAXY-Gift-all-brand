.class public Lcom/bzbs/bean/Campaign;
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

.field public ItemCountSold:I

.field public ItemRemain:I

.field public Location:Ljava/lang/String;

.field public MarketGalleryView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/CampaignGallery;",
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

.field public PeopleDislike:Ljava/lang/String;

.field public PeopleLike:I

.field public PointPerUnit:Ljava/lang/String;

.field public PointType:Ljava/lang/String;

.field public PricePerUnit:Ljava/lang/String;

.field public Qty:J

.field public Quantity:I

.field public Rating:D

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

.field public UseCount:I

.field public UserPackagePoints:J

.field public UserPackagePrices:Ljava/math/BigDecimal;

.field public UserRequirePoints:J

.field public UserSummaryPrices:Ljava/math/BigDecimal;

.field public Value:Ljava/lang/String;

.field public VoucherExpireDate:J

.field public Website:Ljava/lang/String;

.field public campaignExtra:Lcom/bzbs/bean/CampaignExtra;

.field public campaignExtra_video_download_uri:Ljava/lang/String;

.field public isFromNoti:Z

.field public jsonExtra:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->ParentCategoryID:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->TracePlanId:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->Value:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->Caption:Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lcom/bzbs/bean/Campaign;->isFromNoti:Z

    .line 70
    iput v1, p0, Lcom/bzbs/bean/Campaign;->ItemRemain:I

    .line 76
    iput v1, p0, Lcom/bzbs/bean/Campaign;->UseCount:I

    .line 77
    iput v1, p0, Lcom/bzbs/bean/Campaign;->RedeemCount:I

    .line 87
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->CustomCaption:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->UserPackagePrices:Ljava/math/BigDecimal;

    .line 93
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->UserSummaryPrices:Ljava/math/BigDecimal;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    .line 96
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    .line 100
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->InterfaceDisplay:Ljava/lang/String;

    .line 101
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->PointType:Ljava/lang/String;

    .line 103
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->jsonExtra:Ljava/lang/String;

    .line 106
    iput v1, p0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    .line 107
    iput v1, p0, Lcom/bzbs/bean/Campaign;->ConditionAlertID:I

    .line 108
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    .line 109
    iput v1, p0, Lcom/bzbs/bean/Campaign;->MinutesValidAfterUsed:I

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bzbs/bean/Campaign;->Rating:D

    .line 144
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->ParentCategoryID:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->TracePlanId:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->Value:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->Caption:Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lcom/bzbs/bean/Campaign;->isFromNoti:Z

    .line 70
    iput v1, p0, Lcom/bzbs/bean/Campaign;->ItemRemain:I

    .line 76
    iput v1, p0, Lcom/bzbs/bean/Campaign;->UseCount:I

    .line 77
    iput v1, p0, Lcom/bzbs/bean/Campaign;->RedeemCount:I

    .line 87
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->CustomCaption:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->UserPackagePrices:Ljava/math/BigDecimal;

    .line 93
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->UserSummaryPrices:Ljava/math/BigDecimal;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    .line 96
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    .line 100
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->InterfaceDisplay:Ljava/lang/String;

    .line 101
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->PointType:Ljava/lang/String;

    .line 103
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->jsonExtra:Ljava/lang/String;

    .line 106
    iput v1, p0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    .line 107
    iput v1, p0, Lcom/bzbs/bean/Campaign;->ConditionAlertID:I

    .line 108
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    .line 109
    iput v1, p0, Lcom/bzbs/bean/Campaign;->MinutesValidAfterUsed:I

    .line 112
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bzbs/bean/Campaign;->Rating:D

    .line 161
    const-string/jumbo v0, "AgencyName"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->AgencyName:Ljava/lang/String;

    .line 162
    const-string/jumbo v0, "ID"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    .line 163
    const-string/jumbo v0, "AgencyID"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->AgencyID:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/bzbs/bean/Campaign;->AgencyID:Ljava/lang/String;

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/bzbs/bean/Campaign;->AgencyID:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 166
    :cond_8f
    const-string/jumbo v0, "AgencyId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->AgencyID:Ljava/lang/String;

    .line 169
    :cond_98
    const-string/jumbo v0, "Name"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    .line 170
    const-string/jumbo v0, "Detail"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->Detail:Ljava/lang/String;

    .line 171
    const-string/jumbo v0, "Condition"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->Condition:Ljava/lang/String;

    .line 172
    const-string/jumbo v0, "ReferenceCode"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->ReferenceCode:Ljava/lang/String;

    .line 173
    const-string/jumbo v0, "CategoryID"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->CategoryID:Ljava/lang/String;

    .line 174
    const-string/jumbo v0, "CategoryName"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->CategoryName:Ljava/lang/String;

    .line 175
    const-string/jumbo v0, "ParentCategoryID"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->ParentCategoryID:Ljava/lang/String;

    .line 176
    const-string/jumbo v0, "StartDate"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->StartDate:Ljava/lang/String;

    .line 177
    const-string/jumbo v0, "CurrentDate"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->CurrentDate:Ljava/lang/String;

    .line 178
    const-string/jumbo v0, "ExpireDate"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->ExpireDate:Ljava/lang/String;

    .line 179
    const-string/jumbo v0, "Location"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->Location:Ljava/lang/String;

    .line 180
    const-string/jumbo v0, "Website"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    .line 181
    const-string/jumbo v0, "Discount"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->Discount:Ljava/lang/String;

    .line 182
    const-string/jumbo v0, "OriginalPrice"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->OriginalPrice:Ljava/lang/String;

    .line 183
    const-string/jumbo v0, "PricePerUnit"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->PricePerUnit:Ljava/lang/String;

    .line 184
    const-string/jumbo v0, "PointPerUnit"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    .line 185
    const-string/jumbo v0, "Quantity"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/Campaign;->Quantity:I

    .line 187
    const-string/jumbo v0, "RedeemMostPerPerson"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/Campaign;->RedeemMostPerPerson:I

    .line 188
    const-string/jumbo v0, "PeopleLike"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/Campaign;->PeopleLike:I

    .line 189
    const-string/jumbo v0, "PeopleDislike"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->PeopleDislike:Ljava/lang/String;

    .line 190
    const-string/jumbo v0, "ItemCountSold"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/Campaign;->ItemCountSold:I

    .line 191
    const-string/jumbo v0, "Under18"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->Under18:Ljava/lang/String;

    .line 192
    const-string/jumbo v0, "Delivered"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/Campaign;->Delivered:Z

    .line 193
    const-string/jumbo v0, "StatusID"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->StatusID:Ljava/lang/String;

    .line 194
    const-string/jumbo v0, "TermsAndConditions"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->TermsAndConditions:Ljava/lang/String;

    .line 195
    const-string/jumbo v0, "CreateDate"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->CreateDate:Ljava/lang/String;

    .line 196
    const-string/jumbo v0, "CreateBy"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->CreateBy:Ljava/lang/String;

    .line 197
    const-string/jumbo v0, "ModifyDate"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->ModifyDate:Ljava/lang/String;

    .line 198
    const-string/jumbo v0, "ModifyBy"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->ModifyBy:Ljava/lang/String;

    .line 199
    const-string/jumbo v0, "Buzz"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/Campaign;->Buzz:I

    .line 200
    const-string/jumbo v0, "Score"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->Score:Ljava/lang/String;

    .line 201
    const-string/jumbo v0, "Type"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    .line 202
    const-string/jumbo v0, "AgencyAddress"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->AgencyAddress:Ljava/lang/String;

    .line 203
    const-string/jumbo v0, "AgencyCity"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->AgencyCity:Ljava/lang/String;

    .line 204
    const-string/jumbo v0, "AgencyCountry"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->AgencyCountry:Ljava/lang/String;

    .line 205
    const-string/jumbo v0, "AgencyZipCode"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->AgencyZipCode:Ljava/lang/String;

    .line 206
    const-string/jumbo v0, "AgencyTel"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->AgencyTel:Ljava/lang/String;

    .line 207
    const-string/jumbo v0, "AgencyWebsite"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->AgencyWebsite:Ljava/lang/String;

    .line 208
    const-string/jumbo v0, "DayRemain"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->DayRemain:Ljava/lang/String;

    .line 210
    const-string/jumbo v0, "TracesJson"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->TracesJson:Ljava/lang/String;

    .line 211
    const-string/jumbo v0, "IsConditionPass"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/Campaign;->IsConditionPass:Z

    .line 213
    const-string/jumbo v0, "DayProceed"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/Campaign;->DayProceed:I

    .line 215
    const-string/jumbo v0, "FanPageId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->FanPageId:Ljava/lang/String;

    .line 217
    const-string/jumbo v0, "IsLike"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/Campaign;->IsLike:Z

    .line 219
    const-string/jumbo v0, "UseCount"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/Campaign;->UseCount:I

    .line 220
    const-string/jumbo v0, "RedeemCount"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/Campaign;->RedeemCount:I

    .line 221
    const-string/jumbo v0, "VoucherExpireDate"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bzbs/bean/Campaign;->VoucherExpireDate:J

    .line 223
    const-string/jumbo v0, "Qty"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bzbs/bean/Campaign;->Qty:J

    .line 225
    const-string/jumbo v0, "ConditionAlert"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    .line 226
    const-string/jumbo v0, "IsUsed"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/Campaign;->IsUsed:Z

    .line 227
    const-string/jumbo v0, "ExpireIn"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bzbs/bean/Campaign;->ExpireIn:J

    .line 228
    const-string/jumbo v0, "IsSpecificPrintVoucher"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/Campaign;->IsSpecificPrintVoucher:Z

    .line 229
    const-string/jumbo v0, "IsWinner"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/Campaign;->IsWinner:Z

    .line 230
    const-string/jumbo v0, "HasWinner"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/Campaign;->HasWinner:Z

    .line 232
    const-string/jumbo v0, "FullImageUrl"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    .line 233
    const-string/jumbo v0, "CustomInput"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->CustomInput:Ljava/lang/String;

    .line 234
    const-string/jumbo v0, "CustomCaption"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->CustomCaption:Ljava/lang/String;

    .line 236
    const-string/jumbo v0, "IsRequirePoints"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/Campaign;->IsRequirePoints:Z

    .line 237
    const-string/jumbo v0, "UserRequirePoints"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bzbs/bean/Campaign;->UserRequirePoints:J

    .line 238
    const-string/jumbo v0, "UserPackagePoints"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bzbs/bean/Campaign;->UserPackagePoints:J

    .line 239
    const-string/jumbo v0, "UserPackagePrices"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->UserPackagePrices:Ljava/math/BigDecimal;

    .line 240
    const-string/jumbo v0, "UserSummaryPrices"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->UserSummaryPrices:Ljava/math/BigDecimal;

    .line 242
    const-string/jumbo v0, "RedeemMedia"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    .line 243
    const-string/jumbo v0, "ConditionAlertID"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/Campaign;->ConditionAlertID:I

    .line 244
    const-string/jumbo v0, "Barcode"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    .line 245
    const-string/jumbo v0, "MinutesValidAfterUsed"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/Campaign;->MinutesValidAfterUsed:I

    .line 246
    const-string/jumbo v0, "NextRedeemDate"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bzbs/bean/Campaign;->NextRedeemDate:J

    .line 248
    const-string/jumbo v0, "Extra"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->jsonExtra:Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/bzbs/bean/Campaign;->jsonExtra:Ljava/lang/String;

    if-eqz v0, :cond_339

    iget-object v0, p0, Lcom/bzbs/bean/Campaign;->jsonExtra:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_339

    .line 251
    :try_start_32b
    new-instance v0, Lcom/bzbs/bean/CampaignExtra;

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/bzbs/bean/Campaign;->jsonExtra:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/bzbs/bean/CampaignExtra;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;
    :try_end_339
    .catch Lorg/json/JSONException; {:try_start_32b .. :try_end_339} :catch_35f

    .line 258
    :cond_339
    :goto_339
    :try_start_339
    const-string/jumbo v0, "Pictures"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    move v0, v1

    .line 261
    :goto_348
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_380

    .line 262
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 263
    iget-object v4, p0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    new-instance v5, Lcom/bzbs/bean/CampaignGallery;

    invoke-direct {v5, v3}, Lcom/bzbs/bean/CampaignGallery;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35c
    .catch Ljava/lang/Exception; {:try_start_339 .. :try_end_35c} :catch_37f

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_348

    .line 252
    :catch_35f
    move-exception v0

    .line 253
    const-string/jumbo v2, "MyLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(JSONException|Extra):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_339

    .line 265
    :catch_37f
    move-exception v0

    .line 270
    :cond_380
    :try_start_380
    iget-object v0, p0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_39f

    .line 271
    new-instance v0, Lcom/bzbs/bean/CampaignGallery;

    invoke-direct {v0}, Lcom/bzbs/bean/CampaignGallery;-><init>()V

    .line 272
    iget-object v2, p0, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    iput-object v2, v0, Lcom/bzbs/bean/CampaignGallery;->ID:Ljava/lang/String;

    .line 273
    const-string/jumbo v2, "FullImageUrl"

    invoke-static {p1, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bzbs/bean/CampaignGallery;->FullImageUrl:Ljava/lang/String;

    .line 274
    iget-object v2, p0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_39f
    .catch Ljava/lang/Exception; {:try_start_380 .. :try_end_39f} :catch_406

    .line 280
    :cond_39f
    :goto_39f
    iget-object v0, p0, Lcom/bzbs/bean/Campaign;->TracesJson:Ljava/lang/String;

    if-eqz v0, :cond_3ea

    iget-object v0, p0, Lcom/bzbs/bean/Campaign;->TracesJson:Ljava/lang/String;

    const-string/jumbo v2, "<null>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3ea

    iget-object v0, p0, Lcom/bzbs/bean/Campaign;->TracesJson:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3ea

    .line 282
    :try_start_3b9
    new-instance v2, Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/bzbs/bean/Campaign;->TracesJson:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v1

    .line 283
    :goto_3c1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3ea

    .line 284
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 286
    const-string/jumbo v3, "TracePlanId"

    invoke-static {v1, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bzbs/bean/Campaign;->TracePlanId:Ljava/lang/String;

    .line 287
    const-string/jumbo v3, "Value"

    invoke-static {v1, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bzbs/bean/Campaign;->Value:Ljava/lang/String;

    .line 288
    const-string/jumbo v3, "Caption"

    invoke-static {v1, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/Campaign;->Caption:Ljava/lang/String;
    :try_end_3e6
    .catch Lorg/json/JSONException; {:try_start_3b9 .. :try_end_3e6} :catch_3e9

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c1

    .line 290
    :catch_3e9
    move-exception v0

    .line 297
    :cond_3ea
    const-string/jumbo v0, "InterfaceDisplay"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->InterfaceDisplay:Ljava/lang/String;

    .line 298
    const-string/jumbo v0, "PointType"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Campaign;->PointType:Ljava/lang/String;

    .line 300
    const-string/jumbo v0, "Rating"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/Campaign;->Rating:D

    .line 301
    return-void

    .line 276
    :catch_406
    move-exception v0

    goto :goto_39f
.end method

.method public static GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/Campaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 377
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 379
    :try_start_c
    new-instance v2, Lcom/bzbs/bean/Campaign;

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bzbs/bean/Campaign;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1c

    .line 377
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 384
    :cond_1b
    return-object v1

    .line 380
    :catch_1c
    move-exception v2

    goto :goto_18
.end method


# virtual methods
.method public FullImageUrlLarge()Ljava/lang/String;
    .registers 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/bzbs/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 132
    iget-object v0, p0, Lcom/bzbs/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, "?"

    const-string/jumbo v2, "-large?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_17
    return-object v0

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

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
    .line 123
    iget-object v0, p0, Lcom/bzbs/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 124
    iget-object v0, p0, Lcom/bzbs/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, "?"

    const-string/jumbo v2, "-small?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_17
    return-object v0

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

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
    .line 115
    iget-object v0, p0, Lcom/bzbs/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 116
    iget-object v0, p0, Lcom/bzbs/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    const-string/jumbo v1, "?"

    const-string/jumbo v2, "-thumbnail?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 118
    :goto_17
    return-object v0

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

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

    .prologue
    .line 139
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public convertCampaign()Lcom/bzbs/lib/survey/bean/Campaign;
    .registers 5

    .prologue
    .line 304
    new-instance v0, Lcom/bzbs/lib/survey/bean/Campaign;

    invoke-direct {v0}, Lcom/bzbs/lib/survey/bean/Campaign;-><init>()V

    .line 305
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->AgencyName:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->a:Ljava/lang/String;

    .line 306
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->b:Ljava/lang/String;

    .line 307
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->AgencyID:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->c:Ljava/lang/String;

    .line 308
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->d:Ljava/lang/String;

    .line 309
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->Detail:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->e:Ljava/lang/String;

    .line 310
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->Condition:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->f:Ljava/lang/String;

    .line 311
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->ReferenceCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->g:Ljava/lang/String;

    .line 312
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->CategoryID:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->h:Ljava/lang/String;

    .line 313
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->CategoryName:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->i:Ljava/lang/String;

    .line 314
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->StartDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->j:Ljava/lang/String;

    .line 315
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->ExpireDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->k:Ljava/lang/String;

    .line 316
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->Location:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->l:Ljava/lang/String;

    .line 317
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->m:Ljava/lang/String;

    .line 318
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->Discount:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->n:Ljava/lang/String;

    .line 319
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->OriginalPrice:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->o:Ljava/lang/String;

    .line 320
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->PricePerUnit:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->p:Ljava/lang/String;

    .line 321
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->q:Ljava/lang/String;

    .line 322
    iget v1, p0, Lcom/bzbs/bean/Campaign;->PeopleLike:I

    iput v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->t:I

    .line 323
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->Under18:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->w:Ljava/lang/String;

    .line 324
    iget-boolean v1, p0, Lcom/bzbs/bean/Campaign;->Delivered:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->x:Ljava/lang/String;

    .line 325
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->StatusID:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->y:Ljava/lang/String;

    .line 326
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->TermsAndConditions:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->z:Ljava/lang/String;

    .line 327
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->CreateDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->A:Ljava/lang/String;

    .line 329
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->CreateBy:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->B:Ljava/lang/String;

    .line 330
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->ModifyDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->C:Ljava/lang/String;

    .line 331
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->ModifyBy:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->D:Ljava/lang/String;

    .line 332
    iget v1, p0, Lcom/bzbs/bean/Campaign;->Buzz:I

    iput v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->E:I

    .line 333
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->Score:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->F:Ljava/lang/String;

    .line 334
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->G:Ljava/lang/String;

    .line 335
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->AgencyAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->I:Ljava/lang/String;

    .line 336
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->AgencyCity:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->J:Ljava/lang/String;

    .line 337
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->AgencyCountry:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->K:Ljava/lang/String;

    .line 338
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->AgencyZipCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->L:Ljava/lang/String;

    .line 339
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->AgencyTel:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->M:Ljava/lang/String;

    .line 340
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->AgencyWebsite:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->N:Ljava/lang/String;

    .line 341
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->DayRemain:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->O:Ljava/lang/String;

    .line 343
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->TracesJson:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->P:Ljava/lang/String;

    .line 344
    iget-boolean v1, p0, Lcom/bzbs/bean/Campaign;->IsConditionPass:Z

    iput-boolean v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->Q:Z

    .line 345
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->TracePlanId:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->R:Ljava/lang/String;

    .line 346
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->Value:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->S:Ljava/lang/String;

    .line 348
    iget-boolean v1, p0, Lcom/bzbs/bean/Campaign;->isFromNoti:Z

    iput-boolean v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->V:Z

    .line 349
    iget v1, p0, Lcom/bzbs/bean/Campaign;->ItemRemain:I

    iput v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->W:I

    .line 351
    iget v1, p0, Lcom/bzbs/bean/Campaign;->DayProceed:I

    iput v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->X:I

    .line 352
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->FanPageId:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->U:Ljava/lang/String;

    .line 355
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->ad:Ljava/lang/String;

    .line 357
    iget-boolean v1, p0, Lcom/bzbs/bean/Campaign;->IsLike:Z

    iput-boolean v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->Y:Z

    .line 359
    iget-wide v2, p0, Lcom/bzbs/bean/Campaign;->Qty:J

    iput-wide v2, v0, Lcom/bzbs/lib/survey/bean/Campaign;->ac:J

    .line 365
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->FullImageUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->av:Ljava/lang/String;

    .line 366
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->CustomInput:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->aj:Ljava/lang/String;

    .line 367
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->CustomCaption:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->ak:Ljava/lang/String;

    .line 369
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->jsonExtra:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->aw:Ljava/lang/String;

    .line 370
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->jsonExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/bean/Campaign;->a(Ljava/lang/String;)Lcom/bzbs/lib/survey/bean/CampaignExtra;

    .line 371
    iget-object v1, p0, Lcom/bzbs/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/lib/survey/bean/Campaign;->ar:Ljava/lang/String;

    .line 372
    return-object v0
.end method

.method public convertJsonExtra(Ljava/lang/String;)Lcom/bzbs/bean/CampaignExtra;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 147
    if-eqz p1, :cond_1a

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 149
    :try_start_c
    new-instance v1, Lcom/bzbs/bean/CampaignExtra;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/bzbs/bean/CampaignExtra;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/bzbs/bean/Campaign;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    .line 150
    iget-object v0, p0, Lcom/bzbs/bean/Campaign;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_1a} :catch_1b

    .line 156
    :cond_1a
    :goto_1a
    return-object v0

    .line 151
    :catch_1b
    move-exception v1

    .line 152
    const-string/jumbo v2, "MyLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(JSONException|Extra):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method
