.class public Lcom/samsung/privilege/bean/Purchasing;
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
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/Purchasing;->IsInstalledApp:Z

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->InstallAppUrl:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->AdsMessage:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->InstallPackageName:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->VerifyTypeAndroid:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->InstallingMessage:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->VerifyingMessage:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->PointType:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 10
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/Purchasing;->IsInstalledApp:Z

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->InstallAppUrl:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->AdsMessage:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->InstallPackageName:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->VerifyTypeAndroid:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->InstallingMessage:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->VerifyingMessage:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->PointType:Ljava/lang/String;

    .line 96
    const-string v0, "AgencyName"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->AgencyName:Ljava/lang/String;

    .line 97
    const-string v0, "ID"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->ID:Ljava/lang/String;

    .line 98
    const-string v0, "AgencyID"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->AgencyID:Ljava/lang/String;

    .line 99
    const-string v0, "Name"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->Name:Ljava/lang/String;

    .line 100
    const-string v0, "Detail"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->Detail:Ljava/lang/String;

    .line 101
    const-string v0, "Condition"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->Condition:Ljava/lang/String;

    .line 102
    const-string v0, "ReferenceCode"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->ReferenceCode:Ljava/lang/String;

    .line 103
    const-string v0, "CategoryID"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->CategoryID:Ljava/lang/String;

    .line 104
    const-string v0, "CategoryName"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->CategoryName:Ljava/lang/String;

    .line 105
    const-string v0, "StartDate"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/privilege/bean/Purchasing;->StartDate:J

    .line 106
    const-string v0, "ExpireDate"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/privilege/bean/Purchasing;->ExpireDate:J

    .line 107
    const-string v0, "Location"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->Location:Ljava/lang/String;

    .line 108
    const-string v0, "Website"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->Website:Ljava/lang/String;

    .line 109
    const-string v0, "Discount"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/privilege/bean/Purchasing;->Discount:J

    .line 110
    const-string v0, "OriginalPrice"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/privilege/bean/Purchasing;->OriginalPrice:J

    .line 111
    const-string v0, "PricePerUnit"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/privilege/bean/Purchasing;->PricePerUnit:J

    .line 112
    const-string v0, "PointPerUnit"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/privilege/bean/Purchasing;->PointPerUnit:J

    .line 113
    const-string v0, "Quantity"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/privilege/bean/Purchasing;->Quantity:J

    .line 114
    const-string v0, "RedeemMostPerPerson"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/privilege/bean/Purchasing;->RedeemMostPerPerson:J

    .line 115
    const-string v0, "PeopleLike"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/privilege/bean/Purchasing;->PeopleLike:J

    .line 116
    const-string v0, "PeopleDislike"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/privilege/bean/Purchasing;->PeopleDislike:J

    .line 117
    const-string v0, "ItemCountSold"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/privilege/bean/Purchasing;->ItemCountSold:J

    .line 118
    const-string v0, "Under18"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/Purchasing;->Under18:Z

    .line 119
    const-string v0, "Delivered"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/Purchasing;->Delivered:Z

    .line 120
    const-string v0, "StatusID"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/privilege/bean/Purchasing;->StatusID:J

    .line 121
    const-string v0, "TermsAndConditions"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->TermsAndConditions:Ljava/lang/String;

    .line 122
    const-string v0, "CreateDate"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/privilege/bean/Purchasing;->CreateDate:J

    .line 123
    const-string v0, "CreateBy"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->CreateBy:Ljava/lang/String;

    .line 124
    const-string v0, "ModifyDate"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/privilege/bean/Purchasing;->ModifyDate:J

    .line 125
    const-string v0, "ModifyBy"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->ModifyBy:Ljava/lang/String;

    .line 126
    const-string v0, "Buzz"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/privilege/bean/Purchasing;->Buzz:J

    .line 127
    const-string v0, "Score"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/privilege/bean/Purchasing;->Score:J

    .line 128
    const-string v0, "Type"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->Type:Ljava/lang/String;

    .line 129
    const-string v0, "AgencyAddress"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->AgencyAddress:Ljava/lang/String;

    .line 130
    const-string v0, "AgencyCity"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->AgencyCity:Ljava/lang/String;

    .line 131
    const-string v0, "AgencyCountry"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->AgencyCountry:Ljava/lang/String;

    .line 132
    const-string v0, "AgencyZipCode"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->AgencyZipCode:Ljava/lang/String;

    .line 133
    const-string v0, "AgencyTel"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->AgencyTel:Ljava/lang/String;

    .line 134
    const-string v0, "DayRemain"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/privilege/bean/Purchasing;->DayRemain:J

    .line 135
    const-string v0, "RefID"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->RefID:Ljava/lang/String;

    .line 136
    const-string v0, "Serial"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->Serial:Ljava/lang/String;

    .line 137
    const-string v0, "Barcode"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->Barcode:Ljava/lang/String;

    .line 138
    const-string v0, "RedeemDate"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/privilege/bean/Purchasing;->RedeemDate:J

    .line 139
    const-string v0, "UsedDate"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/privilege/bean/Purchasing;->UsedDate:J

    .line 140
    const-string v0, "MinutesValidAfterUsed"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/bean/Purchasing;->MinutesValidAfterUsed:I

    .line 143
    const-string v0, "RedeemKey"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->RedeemKey:Ljava/lang/String;

    .line 145
    const-string v0, "FlagUsedBy"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->FlagUsedBy:Ljava/lang/String;

    .line 147
    const-string v0, "IsConditionPass"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_292

    move v0, v1

    :goto_1b4
    iput-boolean v0, p0, Lcom/samsung/privilege/bean/Purchasing;->IsConditionPass:Z

    .line 149
    const-string v0, "LocationAgencyId"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/bean/Purchasing;->LocationAgencyId:I

    .line 150
    const-string v0, "PrivilegeMessage"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->PrivilegeMessage:Ljava/lang/String;

    .line 152
    const-string v0, "IsShipped"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/Purchasing;->IsShipped:Z

    .line 153
    const-string v0, "IsSpecificPrintVoucher"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/Purchasing;->IsSpecificPrintVoucher:Z

    .line 154
    const-string v0, "IsUsed"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/Purchasing;->IsUsed:Z

    .line 155
    const-string v0, "ExpireIn"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/bean/Purchasing;->ExpireIn:I

    .line 156
    const-string v0, "VoucherExpireDate"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/privilege/bean/Purchasing;->VoucherExpireDate:J

    .line 157
    const-string v0, "HasWinner"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/Purchasing;->HasWinner:Z

    .line 158
    const-string v0, "IsWinner"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/Purchasing;->IsWinner:Z

    .line 160
    const-string v0, "CurrentDate"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/privilege/bean/Purchasing;->CurrentDate:J

    .line 162
    const-string v0, "ParcelNo"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    .line 164
    iget-wide v4, p0, Lcom/samsung/privilege/bean/Purchasing;->CurrentDate:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_231

    .line 165
    iget-wide v4, p0, Lcom/samsung/privilege/bean/Purchasing;->CurrentDate:J

    const-wide/16 v6, 0x6270

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/samsung/privilege/bean/Purchasing;->CurrentDate:J

    .line 168
    :cond_231
    const-string v0, "ExpireIn"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_295

    .line 169
    iput-boolean v2, p0, Lcom/samsung/privilege/bean/Purchasing;->NeverExpire:Z

    .line 174
    :goto_245
    const-string v0, "IsInstalledApp"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/Purchasing;->IsInstalledApp:Z

    .line 175
    const-string v0, "InstalledAppDate"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/bean/Purchasing;->InstalledAppDate:J

    .line 176
    const-string v0, "InstallAppUrl"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->InstallAppUrl:Ljava/lang/String;

    .line 177
    const-string v0, "AdsMessage"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->AdsMessage:Ljava/lang/String;

    .line 179
    const-string v0, "InstallPackageName"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->InstallPackageName:Ljava/lang/String;

    .line 180
    const-string v0, "VerifyTypeAndroid"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->VerifyTypeAndroid:Ljava/lang/String;

    .line 181
    const-string v0, "VerifyingMessage"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->VerifyingMessage:Ljava/lang/String;

    .line 182
    const-string v0, "InstallingMessage"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->InstallingMessage:Ljava/lang/String;

    .line 184
    const-string v0, "PointType"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Purchasing;->PointType:Ljava/lang/String;

    .line 185
    return-void

    :cond_292
    move v0, v2

    .line 147
    goto/16 :goto_1b4

    .line 171
    :cond_295
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/Purchasing;->NeverExpire:Z

    goto :goto_245
.end method
