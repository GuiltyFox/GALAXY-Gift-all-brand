.class public Lcom/bzbs/bean/Purchasing;
.super Ljava/lang/Object;
.source "Purchasing.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public AdsMessage:Ljava/lang/String;

.field public AgencyAddress:Ljava/lang/String;

.field public AgencyCity:Ljava/lang/String;

.field public AgencyCountry:Ljava/lang/String;

.field public AgencyID:Ljava/lang/String;

.field public AgencyName:Ljava/lang/String;

.field public AgencyTel:Ljava/lang/String;

.field public AgencyZipCode:Ljava/lang/String;

.field public Barcode:Ljava/lang/String;

.field public Buzz:J

.field public CategoryID:Ljava/lang/String;

.field public CategoryName:Ljava/lang/String;

.field public Condition:Ljava/lang/String;

.field public CreateBy:Ljava/lang/String;

.field public CreateDate:J

.field public CurrentDate:J

.field public DayRemain:J

.field public Delivered:Z

.field public Detail:Ljava/lang/String;

.field public Discount:J

.field public ExpireDate:J

.field public ExpireIn:I

.field public FlagUsedBy:Ljava/lang/String;

.field public FullImageUrl:Ljava/lang/String;

.field public HasWinner:Z

.field public ID:Ljava/lang/String;

.field public InstallAppUrl:Ljava/lang/String;

.field public InstallPackageName:Ljava/lang/String;

.field public InstalledAppDate:J

.field public InstallingMessage:Ljava/lang/String;

.field public IsConditionPass:Z

.field public IsInstalledApp:Z

.field public IsShipped:Z

.field public IsSpecificPrintVoucher:Z

.field public IsUsed:Z

.field public IsWinner:Z

.field public ItemCountSold:J

.field public Location:Ljava/lang/String;

.field public LocationAgencyId:I

.field public MinutesValidAfterUsed:I

.field public ModifyBy:Ljava/lang/String;

.field public ModifyDate:J

.field public Name:Ljava/lang/String;

.field public NeverExpire:Z

.field public OriginalPrice:J

.field public ParcelNo:Ljava/lang/String;

.field public PeopleDislike:J

.field public PeopleLike:J

.field public PointPerUnit:J

.field public PointType:Ljava/lang/String;

.field public PricePerUnit:J

.field public PrivilegeMessage:Ljava/lang/String;

.field public Quantity:J

.field public RedeemDate:J

.field public RedeemKey:Ljava/lang/String;

.field public RedeemMostPerPerson:J

.field public RefID:Ljava/lang/String;

.field public ReferenceCode:Ljava/lang/String;

.field public Score:J

.field public Serial:Ljava/lang/String;

.field public StartDate:J

.field public StatusID:J

.field public TermsAndConditions:Ljava/lang/String;

.field public Type:Ljava/lang/String;

.field public Under18:Z

.field public UsedDate:J

.field public VerifyTypeAndroid:Ljava/lang/String;

.field public VerifyingMessage:Ljava/lang/String;

.field public VoucherExpireDate:J

.field public Website:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->FullImageUrl:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/bean/Purchasing;->IsInstalledApp:Z

    .line 85
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->InstallAppUrl:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->AdsMessage:Ljava/lang/String;

    .line 88
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->InstallPackageName:Ljava/lang/String;

    .line 89
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->VerifyTypeAndroid:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->InstallingMessage:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->VerifyingMessage:Ljava/lang/String;

    .line 93
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->PointType:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->FullImageUrl:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    .line 83
    iput-boolean v2, p0, Lcom/bzbs/bean/Purchasing;->IsInstalledApp:Z

    .line 85
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->InstallAppUrl:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->AdsMessage:Ljava/lang/String;

    .line 88
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->InstallPackageName:Ljava/lang/String;

    .line 89
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->VerifyTypeAndroid:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->InstallingMessage:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->VerifyingMessage:Ljava/lang/String;

    .line 93
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->PointType:Ljava/lang/String;

    .line 100
    const-string/jumbo v0, "AgencyName"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->AgencyName:Ljava/lang/String;

    .line 101
    const-string/jumbo v0, "ID"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->ID:Ljava/lang/String;

    .line 102
    const-string/jumbo v0, "AgencyID"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->AgencyID:Ljava/lang/String;

    .line 103
    const-string/jumbo v0, "Name"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->Name:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, "Detail"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->Detail:Ljava/lang/String;

    .line 105
    const-string/jumbo v0, "Condition"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->Condition:Ljava/lang/String;

    .line 106
    const-string/jumbo v0, "ReferenceCode"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->ReferenceCode:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, "CategoryID"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->CategoryID:Ljava/lang/String;

    .line 108
    const-string/jumbo v0, "CategoryName"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->CategoryName:Ljava/lang/String;

    .line 109
    const-string/jumbo v0, "StartDate"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bzbs/bean/Purchasing;->StartDate:J

    .line 110
    const-string/jumbo v0, "ExpireDate"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bzbs/bean/Purchasing;->ExpireDate:J

    .line 111
    const-string/jumbo v0, "Location"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->Location:Ljava/lang/String;

    .line 112
    const-string/jumbo v0, "Website"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->Website:Ljava/lang/String;

    .line 113
    const-string/jumbo v0, "Discount"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bzbs/bean/Purchasing;->Discount:J

    .line 114
    const-string/jumbo v0, "OriginalPrice"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bzbs/bean/Purchasing;->OriginalPrice:J

    .line 115
    const-string/jumbo v0, "PricePerUnit"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bzbs/bean/Purchasing;->PricePerUnit:J

    .line 116
    const-string/jumbo v0, "PointPerUnit"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bzbs/bean/Purchasing;->PointPerUnit:J

    .line 117
    const-string/jumbo v0, "Quantity"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bzbs/bean/Purchasing;->Quantity:J

    .line 118
    const-string/jumbo v0, "RedeemMostPerPerson"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bzbs/bean/Purchasing;->RedeemMostPerPerson:J

    .line 119
    const-string/jumbo v0, "PeopleLike"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bzbs/bean/Purchasing;->PeopleLike:J

    .line 120
    const-string/jumbo v0, "PeopleDislike"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bzbs/bean/Purchasing;->PeopleDislike:J

    .line 121
    const-string/jumbo v0, "ItemCountSold"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bzbs/bean/Purchasing;->ItemCountSold:J

    .line 122
    const-string/jumbo v0, "Under18"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/Purchasing;->Under18:Z

    .line 123
    const-string/jumbo v0, "Delivered"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/Purchasing;->Delivered:Z

    .line 124
    const-string/jumbo v0, "StatusID"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bzbs/bean/Purchasing;->StatusID:J

    .line 125
    const-string/jumbo v0, "TermsAndConditions"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->TermsAndConditions:Ljava/lang/String;

    .line 126
    const-string/jumbo v0, "CreateDate"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bzbs/bean/Purchasing;->CreateDate:J

    .line 127
    const-string/jumbo v0, "CreateBy"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->CreateBy:Ljava/lang/String;

    .line 128
    const-string/jumbo v0, "ModifyDate"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bzbs/bean/Purchasing;->ModifyDate:J

    .line 129
    const-string/jumbo v0, "ModifyBy"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->ModifyBy:Ljava/lang/String;

    .line 130
    const-string/jumbo v0, "Buzz"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bzbs/bean/Purchasing;->Buzz:J

    .line 131
    const-string/jumbo v0, "Score"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bzbs/bean/Purchasing;->Score:J

    .line 132
    const-string/jumbo v0, "Type"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->Type:Ljava/lang/String;

    .line 133
    const-string/jumbo v0, "AgencyAddress"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->AgencyAddress:Ljava/lang/String;

    .line 134
    const-string/jumbo v0, "AgencyCity"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->AgencyCity:Ljava/lang/String;

    .line 135
    const-string/jumbo v0, "AgencyCountry"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->AgencyCountry:Ljava/lang/String;

    .line 136
    const-string/jumbo v0, "AgencyZipCode"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->AgencyZipCode:Ljava/lang/String;

    .line 137
    const-string/jumbo v0, "AgencyTel"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->AgencyTel:Ljava/lang/String;

    .line 138
    const-string/jumbo v0, "DayRemain"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bzbs/bean/Purchasing;->DayRemain:J

    .line 139
    const-string/jumbo v0, "RefID"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->RefID:Ljava/lang/String;

    .line 140
    const-string/jumbo v0, "Serial"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->Serial:Ljava/lang/String;

    .line 141
    const-string/jumbo v0, "Barcode"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->Barcode:Ljava/lang/String;

    .line 142
    const-string/jumbo v0, "RedeemDate"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bzbs/bean/Purchasing;->RedeemDate:J

    .line 143
    const-string/jumbo v0, "UsedDate"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bzbs/bean/Purchasing;->UsedDate:J

    .line 144
    const-string/jumbo v0, "MinutesValidAfterUsed"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/Purchasing;->MinutesValidAfterUsed:I

    .line 145
    const-string/jumbo v0, "FullImageUrl"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->FullImageUrl:Ljava/lang/String;

    .line 148
    const-string/jumbo v0, "RedeemKey"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->RedeemKey:Ljava/lang/String;

    .line 150
    const-string/jumbo v0, "FlagUsedBy"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->FlagUsedBy:Ljava/lang/String;

    .line 152
    const-string/jumbo v0, "IsConditionPass"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_302

    move v0, v1

    :goto_1fa
    iput-boolean v0, p0, Lcom/bzbs/bean/Purchasing;->IsConditionPass:Z

    .line 154
    const-string/jumbo v0, "LocationAgencyId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/Purchasing;->LocationAgencyId:I

    .line 155
    const-string/jumbo v0, "PrivilegeMessage"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->PrivilegeMessage:Ljava/lang/String;

    .line 157
    const-string/jumbo v0, "IsShipped"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/Purchasing;->IsShipped:Z

    .line 158
    const-string/jumbo v0, "IsSpecificPrintVoucher"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/Purchasing;->IsSpecificPrintVoucher:Z

    .line 159
    const-string/jumbo v0, "IsUsed"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/Purchasing;->IsUsed:Z

    .line 160
    const-string/jumbo v0, "ExpireIn"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/Purchasing;->ExpireIn:I

    .line 161
    const-string/jumbo v0, "VoucherExpireDate"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bzbs/bean/Purchasing;->VoucherExpireDate:J

    .line 162
    const-string/jumbo v0, "HasWinner"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/Purchasing;->HasWinner:Z

    .line 163
    const-string/jumbo v0, "IsWinner"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/Purchasing;->IsWinner:Z

    .line 165
    const-string/jumbo v0, "CurrentDate"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bzbs/bean/Purchasing;->CurrentDate:J

    .line 168
    const-string/jumbo v0, "PacelNo"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/bzbs/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_287

    .line 170
    const-string/jumbo v0, "ParcelNo"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    .line 173
    :cond_287
    iget-wide v4, p0, Lcom/bzbs/bean/Purchasing;->CurrentDate:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_296

    .line 174
    iget-wide v4, p0, Lcom/bzbs/bean/Purchasing;->CurrentDate:J

    const-wide/16 v6, 0x6270

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bzbs/bean/Purchasing;->CurrentDate:J

    .line 177
    :cond_296
    const-string/jumbo v0, "ExpireIn"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_305

    .line 178
    iput-boolean v1, p0, Lcom/bzbs/bean/Purchasing;->NeverExpire:Z

    .line 183
    :goto_2ac
    const-string/jumbo v0, "IsInstalledApp"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/Purchasing;->IsInstalledApp:Z

    .line 184
    const-string/jumbo v0, "InstalledAppDate"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/Purchasing;->InstalledAppDate:J

    .line 185
    const-string/jumbo v0, "InstallAppUrl"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->InstallAppUrl:Ljava/lang/String;

    .line 186
    const-string/jumbo v0, "AdsMessage"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->AdsMessage:Ljava/lang/String;

    .line 188
    const-string/jumbo v0, "InstallPackageName"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->InstallPackageName:Ljava/lang/String;

    .line 189
    const-string/jumbo v0, "VerifyTypeAndroid"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->VerifyTypeAndroid:Ljava/lang/String;

    .line 190
    const-string/jumbo v0, "VerifyingMessage"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->VerifyingMessage:Ljava/lang/String;

    .line 191
    const-string/jumbo v0, "InstallingMessage"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->InstallingMessage:Ljava/lang/String;

    .line 193
    const-string/jumbo v0, "PointType"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/Purchasing;->PointType:Ljava/lang/String;

    .line 194
    return-void

    :cond_302
    move v0, v2

    .line 152
    goto/16 :goto_1fa

    .line 180
    :cond_305
    iput-boolean v2, p0, Lcom/bzbs/bean/Purchasing;->NeverExpire:Z

    goto :goto_2ac
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
            "Lcom/bzbs/bean/Purchasing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 200
    :try_start_c
    new-instance v2, Lcom/bzbs/bean/Purchasing;

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bzbs/bean/Purchasing;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1c

    .line 198
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 205
    :cond_1b
    return-object v1

    .line 201
    :catch_1c
    move-exception v2

    goto :goto_18
.end method
