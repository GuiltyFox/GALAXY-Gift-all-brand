.class public Lcom/bzbs/bean/HistoryCardsList;
.super Ljava/lang/Object;
.source "HistoryCardsList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public Amount:D

.field public CampaignId:Ljava/lang/String;

.field public CustomerName:Ljava/lang/String;

.field public Description:Ljava/lang/String;

.field public ImageUrl:Ljava/lang/String;

.field public Issuer:Ljava/lang/String;

.field public IssuerName:Ljava/lang/String;

.field public Merchant:Ljava/lang/String;

.field public MerchantName:Ljava/lang/String;

.field public Timestamp:J

.field public branchId:Ljava/lang/String;

.field public branchName:Ljava/lang/String;

.field public brandId:Ljava/lang/String;

.field public cardId:Ljava/lang/String;

.field public customerId:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public status:I

.field public transactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->cardId:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->branchId:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->branchName:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->brandId:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->customerId:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->transactionId:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->message:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->cardId:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->branchId:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->branchName:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->brandId:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->customerId:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->transactionId:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->message:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "amount"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/HistoryCardsList;->Amount:D

    .line 42
    const-string/jumbo v0, "branchId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->branchId:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "brandId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->brandId:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "branchName"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->branchName:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "customerId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->customerId:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "customerName"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->CustomerName:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "campaignId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->CampaignId:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "issuer"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->Issuer:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "issuerName"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->IssuerName:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "imageUrl"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->ImageUrl:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "description"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->Description:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "timestamp"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/HistoryCardsList;->Timestamp:J

    .line 56
    const-string/jumbo v0, "merchant"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->Merchant:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "merchantName"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->MerchantName:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "status"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/HistoryCardsList;->status:I

    .line 59
    const-string/jumbo v0, "transactionId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->transactionId:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "message"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryCardsList;->message:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 35
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
