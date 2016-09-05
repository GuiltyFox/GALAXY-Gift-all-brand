.class public Lcom/bzbs/bean/History;
.super Ljava/lang/Object;
.source "History.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public AdsMessage:Ljava/lang/String;

.field public AgencyID:I

.field public AgencyName:Ljava/lang/String;

.field public Barcode:Ljava/lang/String;

.field public CategoryID:I

.field public Condition:Ljava/lang/String;

.field public CurrentDate:J

.field public Delivered:Z

.field public Discount:D

.field public ExpireIn:I

.field public FullImageUrl:Ljava/lang/String;

.field public HasWinner:Z

.field public ID:I

.field public InstallAppIosSchema:Ljava/lang/String;

.field public InstallAppUrl:Ljava/lang/String;

.field public InstallPackageName:Ljava/lang/String;

.field public InstalledAppDate:J

.field public InstallingMessage:Ljava/lang/String;

.field public InterfaceDisplay:Ljava/lang/String;

.field public IsCampaignTopup:Z

.field public IsConditionPass:Z

.field public IsInstalledApp:Z

.field public IsNotAutoUse:Z

.field public IsShipped:Z

.field public IsSpecificPrintVoucher:Z

.field public IsUsed:Z

.field public IsWinner:Z

.field public ItemNumber:I

.field public MinutesValidAfterUsed:I

.field public ModifyDate:J

.field public Name:Ljava/lang/String;

.field public OriginalPrice:D

.field public OtherPointPerUnit:I

.field public ParcelNo:Ljava/lang/String;

.field public ParentCategoryID:I

.field public PointPerUnit:I

.field public PointType:Ljava/lang/String;

.field public PricePerUnit:D

.field public PrivilegeMessage:Ljava/lang/String;

.field public RedeemDate:J

.field public RedeemKey:Ljava/lang/String;

.field public Serial:Ljava/lang/String;

.field public ShippedStatus:Ljava/lang/String;

.field public ShippingDate:J

.field public StyleSize:Ljava/lang/String;

.field public StyleType:Ljava/lang/String;

.field public Type:I

.field public UsedDate:J

.field public VerifyTypeAndroid:Ljava/lang/String;

.field public VerifyTypeIos:Ljava/lang/String;

.field public VerifyingMessage:Ljava/lang/String;

.field public VoucherExpireDate:J

.field public WinningDate:J


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v1, p0, Lcom/bzbs/bean/History;->ID:I

    .line 14
    iput v1, p0, Lcom/bzbs/bean/History;->ItemNumber:I

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->RedeemKey:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->Name:Ljava/lang/String;

    .line 17
    iput v1, p0, Lcom/bzbs/bean/History;->AgencyID:I

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->AgencyName:Ljava/lang/String;

    .line 19
    iput v1, p0, Lcom/bzbs/bean/History;->Type:I

    .line 20
    iput-wide v2, p0, Lcom/bzbs/bean/History;->RedeemDate:J

    .line 21
    iput-boolean v1, p0, Lcom/bzbs/bean/History;->IsUsed:Z

    .line 22
    iput-wide v2, p0, Lcom/bzbs/bean/History;->UsedDate:J

    .line 23
    iput-wide v2, p0, Lcom/bzbs/bean/History;->VoucherExpireDate:J

    .line 24
    iput-wide v2, p0, Lcom/bzbs/bean/History;->CurrentDate:J

    .line 25
    iput v1, p0, Lcom/bzbs/bean/History;->ExpireIn:I

    .line 26
    iput-boolean v1, p0, Lcom/bzbs/bean/History;->Delivered:Z

    .line 27
    iput-boolean v1, p0, Lcom/bzbs/bean/History;->IsShipped:Z

    .line 28
    iput-wide v2, p0, Lcom/bzbs/bean/History;->ShippingDate:J

    .line 29
    iput-boolean v1, p0, Lcom/bzbs/bean/History;->IsWinner:Z

    .line 30
    iput-wide v2, p0, Lcom/bzbs/bean/History;->WinningDate:J

    .line 31
    iput-boolean v1, p0, Lcom/bzbs/bean/History;->HasWinner:Z

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->PrivilegeMessage:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lcom/bzbs/bean/History;->IsSpecificPrintVoucher:Z

    .line 34
    iput-boolean v1, p0, Lcom/bzbs/bean/History;->IsConditionPass:Z

    .line 35
    iput-wide v2, p0, Lcom/bzbs/bean/History;->ModifyDate:J

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->Serial:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->Condition:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->FullImageUrl:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->Barcode:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->ParcelNo:Ljava/lang/String;

    .line 41
    iput v1, p0, Lcom/bzbs/bean/History;->PointPerUnit:I

    .line 42
    iput-boolean v1, p0, Lcom/bzbs/bean/History;->IsInstalledApp:Z

    .line 43
    iput-wide v2, p0, Lcom/bzbs/bean/History;->InstalledAppDate:J

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->InstallAppUrl:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->AdsMessage:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->StyleType:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->StyleSize:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->InstallPackageName:Ljava/lang/String;

    .line 49
    iput v1, p0, Lcom/bzbs/bean/History;->MinutesValidAfterUsed:I

    .line 50
    iput-wide v4, p0, Lcom/bzbs/bean/History;->Discount:D

    .line 51
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->InstallAppIosSchema:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->VerifyTypeIos:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->VerifyTypeAndroid:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->InstallingMessage:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->VerifyingMessage:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->InterfaceDisplay:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->PointType:Ljava/lang/String;

    .line 58
    iput-wide v4, p0, Lcom/bzbs/bean/History;->PricePerUnit:D

    .line 59
    iput-wide v4, p0, Lcom/bzbs/bean/History;->OriginalPrice:D

    .line 60
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->ShippedStatus:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/bzbs/bean/History;->IsCampaignTopup:Z

    .line 62
    iput-boolean v1, p0, Lcom/bzbs/bean/History;->IsNotAutoUse:Z

    .line 63
    iput v1, p0, Lcom/bzbs/bean/History;->OtherPointPerUnit:I

    .line 64
    iput v1, p0, Lcom/bzbs/bean/History;->CategoryID:I

    .line 65
    iput v1, p0, Lcom/bzbs/bean/History;->ParentCategoryID:I

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v1, p0, Lcom/bzbs/bean/History;->ID:I

    .line 14
    iput v1, p0, Lcom/bzbs/bean/History;->ItemNumber:I

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->RedeemKey:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->Name:Ljava/lang/String;

    .line 17
    iput v1, p0, Lcom/bzbs/bean/History;->AgencyID:I

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->AgencyName:Ljava/lang/String;

    .line 19
    iput v1, p0, Lcom/bzbs/bean/History;->Type:I

    .line 20
    iput-wide v2, p0, Lcom/bzbs/bean/History;->RedeemDate:J

    .line 21
    iput-boolean v1, p0, Lcom/bzbs/bean/History;->IsUsed:Z

    .line 22
    iput-wide v2, p0, Lcom/bzbs/bean/History;->UsedDate:J

    .line 23
    iput-wide v2, p0, Lcom/bzbs/bean/History;->VoucherExpireDate:J

    .line 24
    iput-wide v2, p0, Lcom/bzbs/bean/History;->CurrentDate:J

    .line 25
    iput v1, p0, Lcom/bzbs/bean/History;->ExpireIn:I

    .line 26
    iput-boolean v1, p0, Lcom/bzbs/bean/History;->Delivered:Z

    .line 27
    iput-boolean v1, p0, Lcom/bzbs/bean/History;->IsShipped:Z

    .line 28
    iput-wide v2, p0, Lcom/bzbs/bean/History;->ShippingDate:J

    .line 29
    iput-boolean v1, p0, Lcom/bzbs/bean/History;->IsWinner:Z

    .line 30
    iput-wide v2, p0, Lcom/bzbs/bean/History;->WinningDate:J

    .line 31
    iput-boolean v1, p0, Lcom/bzbs/bean/History;->HasWinner:Z

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->PrivilegeMessage:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lcom/bzbs/bean/History;->IsSpecificPrintVoucher:Z

    .line 34
    iput-boolean v1, p0, Lcom/bzbs/bean/History;->IsConditionPass:Z

    .line 35
    iput-wide v2, p0, Lcom/bzbs/bean/History;->ModifyDate:J

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->Serial:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->Condition:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->FullImageUrl:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->Barcode:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->ParcelNo:Ljava/lang/String;

    .line 41
    iput v1, p0, Lcom/bzbs/bean/History;->PointPerUnit:I

    .line 42
    iput-boolean v1, p0, Lcom/bzbs/bean/History;->IsInstalledApp:Z

    .line 43
    iput-wide v2, p0, Lcom/bzbs/bean/History;->InstalledAppDate:J

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->InstallAppUrl:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->AdsMessage:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->StyleType:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->StyleSize:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->InstallPackageName:Ljava/lang/String;

    .line 49
    iput v1, p0, Lcom/bzbs/bean/History;->MinutesValidAfterUsed:I

    .line 50
    iput-wide v4, p0, Lcom/bzbs/bean/History;->Discount:D

    .line 51
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->InstallAppIosSchema:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->VerifyTypeIos:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->VerifyTypeAndroid:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->InstallingMessage:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->VerifyingMessage:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->InterfaceDisplay:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->PointType:Ljava/lang/String;

    .line 58
    iput-wide v4, p0, Lcom/bzbs/bean/History;->PricePerUnit:D

    .line 59
    iput-wide v4, p0, Lcom/bzbs/bean/History;->OriginalPrice:D

    .line 60
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/History;->ShippedStatus:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/bzbs/bean/History;->IsCampaignTopup:Z

    .line 62
    iput-boolean v1, p0, Lcom/bzbs/bean/History;->IsNotAutoUse:Z

    .line 63
    iput v1, p0, Lcom/bzbs/bean/History;->OtherPointPerUnit:I

    .line 64
    iput v1, p0, Lcom/bzbs/bean/History;->CategoryID:I

    .line 65
    iput v1, p0, Lcom/bzbs/bean/History;->ParentCategoryID:I

    .line 72
    const-string/jumbo v0, "ID"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/History;->ID:I

    .line 73
    const-string/jumbo v0, "ItemNumber"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/History;->ItemNumber:I

    .line 74
    const-string/jumbo v0, "RedeemKey"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/History;->RedeemKey:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "Name"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/History;->Name:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, "AgencyID"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/History;->AgencyID:I

    .line 77
    const-string/jumbo v0, "AgencyName"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/History;->AgencyName:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, "Type"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/History;->Type:I

    .line 79
    const-string/jumbo v0, "RedeemDate"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/History;->RedeemDate:J

    .line 80
    const-string/jumbo v0, "IsUsed"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/History;->IsUsed:Z

    .line 81
    const-string/jumbo v0, "UsedDate"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/History;->UsedDate:J

    .line 82
    const-string/jumbo v0, "VoucherExpireDate"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/History;->VoucherExpireDate:J

    .line 83
    const-string/jumbo v0, "CurrentDate"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/History;->CurrentDate:J

    .line 84
    const-string/jumbo v0, "ExpireIn"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/History;->ExpireIn:I

    .line 85
    const-string/jumbo v0, "Delivered"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/History;->Delivered:Z

    .line 86
    const-string/jumbo v0, "IsShipped"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/History;->IsShipped:Z

    .line 87
    const-string/jumbo v0, "ShippingDate"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/History;->ShippingDate:J

    .line 88
    const-string/jumbo v0, "IsWinner"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/History;->IsWinner:Z

    .line 89
    const-string/jumbo v0, "WinningDate"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/History;->WinningDate:J

    .line 90
    const-string/jumbo v0, "HasWinner"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/History;->HasWinner:Z

    .line 91
    const-string/jumbo v0, "PrivilegeMessage"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/History;->PrivilegeMessage:Ljava/lang/String;

    .line 92
    const-string/jumbo v0, "IsSpecificPrintVoucher"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/History;->IsSpecificPrintVoucher:Z

    .line 93
    const-string/jumbo v0, "IsConditionPass"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/History;->IsConditionPass:Z

    .line 94
    const-string/jumbo v0, "ModifyDate"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/History;->ModifyDate:J

    .line 95
    const-string/jumbo v0, "Serial"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/History;->Serial:Ljava/lang/String;

    .line 96
    const-string/jumbo v0, "Condition"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/History;->Condition:Ljava/lang/String;

    .line 97
    const-string/jumbo v0, "FullImageUrl"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/History;->FullImageUrl:Ljava/lang/String;

    .line 98
    const-string/jumbo v0, "Barcode"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/History;->Barcode:Ljava/lang/String;

    .line 99
    const-string/jumbo v0, "ParcelNo"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/History;->ParcelNo:Ljava/lang/String;

    .line 100
    const-string/jumbo v0, "PointPerUnit"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/History;->PointPerUnit:I

    .line 101
    const-string/jumbo v0, "IsInstalledApp"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/History;->IsInstalledApp:Z

    .line 102
    const-string/jumbo v0, "InstalledAppDate"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/History;->InstalledAppDate:J

    .line 103
    const-string/jumbo v0, "InstallAppUrl"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/History;->InstallAppUrl:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, "AdsMessage"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/History;->AdsMessage:Ljava/lang/String;

    .line 105
    const-string/jumbo v0, "StyleType"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/History;->StyleType:Ljava/lang/String;

    .line 106
    const-string/jumbo v0, "StyleSize"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/History;->StyleSize:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, "InstallPackageName"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/History;->InstallPackageName:Ljava/lang/String;

    .line 108
    const-string/jumbo v0, "MinutesValidAfterUsed"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/History;->MinutesValidAfterUsed:I

    .line 109
    const-string/jumbo v0, "Discount"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/History;->Discount:D

    .line 110
    const-string/jumbo v0, "InstallAppIosSchema"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/History;->InstallAppIosSchema:Ljava/lang/String;

    .line 111
    const-string/jumbo v0, "VerifyTypeIos"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/History;->VerifyTypeIos:Ljava/lang/String;

    .line 112
    const-string/jumbo v0, "VerifyTypeAndroid"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/History;->VerifyTypeAndroid:Ljava/lang/String;

    .line 113
    const-string/jumbo v0, "InstallingMessage"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/History;->InstallingMessage:Ljava/lang/String;

    .line 114
    const-string/jumbo v0, "VerifyingMessage"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/History;->VerifyingMessage:Ljava/lang/String;

    .line 115
    const-string/jumbo v0, "InterfaceDisplay"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/History;->InterfaceDisplay:Ljava/lang/String;

    .line 116
    const-string/jumbo v0, "PointType"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/History;->PointType:Ljava/lang/String;

    .line 117
    const-string/jumbo v0, "PricePerUnit"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/History;->PricePerUnit:D

    .line 118
    const-string/jumbo v0, "OriginalPrice"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/History;->OriginalPrice:D

    .line 119
    const-string/jumbo v0, "ShippedStatus"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/History;->ShippedStatus:Ljava/lang/String;

    .line 120
    const-string/jumbo v0, "IsCampaignTopup"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/History;->IsCampaignTopup:Z

    .line 121
    const-string/jumbo v0, "IsNotAutoUse"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/History;->IsNotAutoUse:Z

    .line 122
    const-string/jumbo v0, "OtherPointPerUnit"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/History;->OtherPointPerUnit:I

    .line 123
    const-string/jumbo v0, "CategoryID"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/History;->CategoryID:I

    .line 124
    const-string/jumbo v0, "ParentCategoryID"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/History;->ParentCategoryID:I

    .line 125
    return-void
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
            "Lcom/bzbs/bean/History;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 131
    :try_start_c
    new-instance v2, Lcom/bzbs/bean/History;

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bzbs/bean/History;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1c

    .line 129
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 136
    :cond_1b
    return-object v1

    .line 132
    :catch_1c
    move-exception v2

    goto :goto_18
.end method
