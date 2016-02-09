.class public Lcom/samsung/privilege/bean/CampaignNotification;
.super Ljava/lang/Object;
.source "CampaignNotification.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public AgencyAddress:Ljava/lang/String;

.field public AgencyCity:Ljava/lang/String;

.field public AgencyCountry:Ljava/lang/String;

.field public AgencyName:Ljava/lang/String;

.field public AgencyTel:Ljava/lang/String;

.field public AgencyZipCode:Ljava/lang/String;

.field public Buzz:Ljava/lang/String;

.field public DayRemain:Ljava/lang/String;

.field public Delivered:Ljava/lang/String;

.field public Discount:Ljava/lang/String;

.field public ID:Ljava/lang/String;

.field public IsConditionPass:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public PointPerUnit:Ljava/lang/String;

.field public PricePerUnit:Ljava/lang/String;

.field public Qty:Ljava/lang/String;

.field public Rating:Ljava/lang/String;

.field public RedeemMostPerPerson:Ljava/lang/String;

.field public TracesJson:Ljava/lang/String;

.field public Type:Ljava/lang/String;

.field public Website:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "ID"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignNotification;->ID:Ljava/lang/String;

    .line 39
    const-string v0, "Name"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignNotification;->Name:Ljava/lang/String;

    .line 40
    const-string v0, "AgencyName"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignNotification;->AgencyName:Ljava/lang/String;

    .line 41
    const-string v0, "AgencyAddress"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignNotification;->AgencyAddress:Ljava/lang/String;

    .line 42
    const-string v0, "AgencyCity"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignNotification;->AgencyCity:Ljava/lang/String;

    .line 43
    const-string v0, "AgencyCountry"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignNotification;->AgencyCountry:Ljava/lang/String;

    .line 44
    const-string v0, "AgencyZipCode"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignNotification;->AgencyZipCode:Ljava/lang/String;

    .line 45
    const-string v0, "AgencyTel"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignNotification;->AgencyTel:Ljava/lang/String;

    .line 46
    const-string v0, "PricePerUnit"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignNotification;->PricePerUnit:Ljava/lang/String;

    .line 47
    const-string v0, "PointPerUnit"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignNotification;->PointPerUnit:Ljava/lang/String;

    .line 48
    const-string v0, "Discount"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignNotification;->Discount:Ljava/lang/String;

    .line 49
    const-string v0, "Qty"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignNotification;->Qty:Ljava/lang/String;

    .line 50
    const-string v0, "Discount"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignNotification;->Discount:Ljava/lang/String;

    .line 51
    const-string v0, "Buzz"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignNotification;->Buzz:Ljava/lang/String;

    .line 52
    const-string v0, "DayRemain"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignNotification;->DayRemain:Ljava/lang/String;

    .line 53
    const-string v0, "Type"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignNotification;->Type:Ljava/lang/String;

    .line 54
    const-string v0, "Website"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignNotification;->Website:Ljava/lang/String;

    .line 55
    const-string v0, "Delivered"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignNotification;->Delivered:Ljava/lang/String;

    .line 56
    const-string v0, "RedeemMostPerPerson"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignNotification;->RedeemMostPerPerson:Ljava/lang/String;

    .line 57
    const-string v0, "TracesJson"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignNotification;->TracesJson:Ljava/lang/String;

    .line 58
    const-string v0, "Rating"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignNotification;->Rating:Ljava/lang/String;

    .line 59
    const-string v0, "IsConditionPass"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/CampaignNotification;->IsConditionPass:Ljava/lang/String;

    .line 61
    return-void
.end method
