.class public Lcom/bzbs/bean/CodeList;
.super Ljava/lang/Object;
.source "CodeList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public CampaignId_Redeem:I

.field public Code:Ljava/lang/String;

.field public amount_Pay:D

.field public balance_Pay:D

.field public cardId_Pay:Ljava/lang/String;

.field public current_date:J

.field public issuer_Pay:Ljava/lang/String;

.field public merchant_Pay:Ljava/lang/String;

.field public result_Pay:Ljava/lang/String;

.field public transactionId_Pay:Ljava/lang/String;

.field public userId_Pay:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CodeList;->Code:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CodeList;->result_Pay:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CodeList;->transactionId_Pay:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CodeList;->userId_Pay:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CodeList;->cardId_Pay:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CodeList;->issuer_Pay:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CodeList;->merchant_Pay:Ljava/lang/String;

    .line 22
    iput-wide v2, p0, Lcom/bzbs/bean/CodeList;->amount_Pay:D

    .line 23
    iput-wide v2, p0, Lcom/bzbs/bean/CodeList;->balance_Pay:D

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/bzbs/bean/CodeList;->CampaignId_Redeem:I

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bzbs/bean/CodeList;->current_date:J

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CodeList;->Code:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CodeList;->result_Pay:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CodeList;->transactionId_Pay:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CodeList;->userId_Pay:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CodeList;->cardId_Pay:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CodeList;->issuer_Pay:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CodeList;->merchant_Pay:Ljava/lang/String;

    .line 22
    iput-wide v2, p0, Lcom/bzbs/bean/CodeList;->amount_Pay:D

    .line 23
    iput-wide v2, p0, Lcom/bzbs/bean/CodeList;->balance_Pay:D

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/bzbs/bean/CodeList;->CampaignId_Redeem:I

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bzbs/bean/CodeList;->current_date:J

    .line 37
    const-string/jumbo v0, "Code"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CodeList;->Code:Ljava/lang/String;

    .line 40
    :try_start_3c
    const-string/jumbo v0, "Pay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 41
    const-string/jumbo v1, "result"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/CodeList;->result_Pay:Ljava/lang/String;

    .line 42
    const-string/jumbo v1, "transactionId"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/CodeList;->transactionId_Pay:Ljava/lang/String;

    .line 43
    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/CodeList;->userId_Pay:Ljava/lang/String;

    .line 44
    const-string/jumbo v1, "cardId"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/CodeList;->cardId_Pay:Ljava/lang/String;

    .line 45
    const-string/jumbo v1, "issuer"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/CodeList;->issuer_Pay:Ljava/lang/String;

    .line 46
    const-string/jumbo v1, "merchant"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/CodeList;->merchant_Pay:Ljava/lang/String;

    .line 47
    const-string/jumbo v1, "amount"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/bzbs/bean/CodeList;->amount_Pay:D

    .line 48
    const-string/jumbo v1, "balance"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/CodeList;->balance_Pay:D
    :try_end_8b
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_8b} :catch_a7

    .line 54
    :goto_8b
    :try_start_8b
    const-string/jumbo v0, "Redeem"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 55
    const-string/jumbo v1, "CampaignId"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/bean/CodeList;->CampaignId_Redeem:I

    .line 56
    const-string/jumbo v1, "CurrentDate"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/CodeList;->current_date:J
    :try_end_a4
    .catch Lorg/json/JSONException; {:try_start_8b .. :try_end_a4} :catch_a5

    .line 60
    :goto_a4
    return-void

    .line 57
    :catch_a5
    move-exception v0

    goto :goto_a4

    .line 49
    :catch_a7
    move-exception v0

    goto :goto_8b
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 33
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
