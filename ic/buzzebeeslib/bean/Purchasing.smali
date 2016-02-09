.class public Lic/buzzebeeslib/bean/Purchasing;
.super Ljava/lang/Object;
.source "Purchasing.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public AgencyID:Ljava/lang/String;

.field public AgencyName:Ljava/lang/String;

.field public CurrentDate:J

.field public Delivered:Z

.field public ExpireIn:J

.field public HasWinner:Z

.field public ID:Ljava/lang/String;

.field public IsConditionPass:Z

.field public IsShipped:Z

.field public IsSpecificPrintVoucher:Z

.field public IsUsed:Z

.field public IsWinner:Z

.field public Name:Ljava/lang/String;

.field public RedeemDate:J

.field public RedeemKey:Ljava/lang/String;

.field public ShippingDate:J

.field public Type:J

.field public UsedDate:J

.field public VoucherExpireDate:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "ID"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/Purchasing;->ID:Ljava/lang/String;

    .line 41
    const-string v0, "RedeemKey"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/Purchasing;->RedeemKey:Ljava/lang/String;

    .line 42
    const-string v0, "Name"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/Purchasing;->Name:Ljava/lang/String;

    .line 43
    const-string v0, "AgencyID"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/Purchasing;->AgencyID:Ljava/lang/String;

    .line 44
    const-string v0, "AgencyName"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/Purchasing;->AgencyName:Ljava/lang/String;

    .line 45
    const-string v0, "Type"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/bean/Purchasing;->Type:J

    .line 46
    const-string v0, "RedeemDate"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/bean/Purchasing;->RedeemDate:J

    .line 47
    const-string v0, "IsUsed"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lic/buzzebeeslib/bean/Purchasing;->IsUsed:Z

    .line 48
    const-string v0, "UsedDate"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/bean/Purchasing;->UsedDate:J

    .line 49
    const-string v0, "VoucherExpireDate"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/bean/Purchasing;->VoucherExpireDate:J

    .line 50
    const-string v0, "CurrentDate"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/bean/Purchasing;->CurrentDate:J

    .line 51
    const-string v0, "ExpireIn"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/bean/Purchasing;->ExpireIn:J

    .line 52
    const-string v0, "IsConditionPass"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_bb

    const/4 v0, 0x0

    :goto_74
    iput-boolean v0, p0, Lic/buzzebeeslib/bean/Purchasing;->IsConditionPass:Z

    .line 53
    const-string v0, "Delivered"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lic/buzzebeeslib/bean/Purchasing;->Delivered:Z

    .line 54
    const-string v0, "IsShipped"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lic/buzzebeeslib/bean/Purchasing;->IsShipped:Z

    .line 55
    const-string v0, "ShippingDate"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/bean/Purchasing;->ShippingDate:J

    .line 56
    const-string v0, "IsSpecificPrintVoucher"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lic/buzzebeeslib/bean/Purchasing;->IsSpecificPrintVoucher:Z

    .line 57
    const-string v0, "IsWinner"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lic/buzzebeeslib/bean/Purchasing;->IsWinner:Z

    .line 58
    const-string v0, "HasWinner"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lic/buzzebeeslib/bean/Purchasing;->HasWinner:Z

    .line 98
    return-void

    .line 52
    :cond_bb
    const/4 v0, 0x1

    goto :goto_74
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
