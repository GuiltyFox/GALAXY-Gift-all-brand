.class public Lcom/bzbs/bean/HistoryWallet;
.super Ljava/lang/Object;
.source "HistoryWallet.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public amount:D

.field public branchId:Ljava/lang/String;

.field public branchName:Ljava/lang/String;

.field public brandId:Ljava/lang/String;

.field public campaignId:Ljava/lang/String;

.field public customerId:Ljava/lang/String;

.field public customerName:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public issuer:Ljava/lang/String;

.field public issuerName:Ljava/lang/String;

.field public merchant:Ljava/lang/String;

.field public merchantName:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public status:I

.field public terminalId:Ljava/lang/String;

.field public timestamp:J

.field public transactionId:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bzbs/bean/HistoryWallet;->amount:D

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->terminalId:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->branchId:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->branchName:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->brandId:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->customerId:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->customerName:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->campaignId:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->description:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->issuer:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->issuerName:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->imageUrl:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->merchant:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->merchantName:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/bzbs/bean/HistoryWallet;->status:I

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bzbs/bean/HistoryWallet;->timestamp:J

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->transactionId:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->type:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->message:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bzbs/bean/HistoryWallet;->amount:D

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->terminalId:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->branchId:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->branchName:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->brandId:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->customerId:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->customerName:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->campaignId:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->description:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->issuer:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->issuerName:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->imageUrl:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->merchant:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->merchantName:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/bzbs/bean/HistoryWallet;->status:I

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bzbs/bean/HistoryWallet;->timestamp:J

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->transactionId:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->type:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->message:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "amount"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/HistoryWallet;->amount:D

    .line 39
    const-string/jumbo v0, "terminalId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->terminalId:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "branchId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->branchId:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "branchName"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->branchName:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "brandId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->brandId:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "customerId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->customerId:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "customerName"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->customerName:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "campaignId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->campaignId:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "description"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->description:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "issuer"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->issuer:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "issuerName"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->issuerName:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "imageUrl"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->imageUrl:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "merchant"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->merchant:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "merchantName"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->merchantName:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "status"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/HistoryWallet;->status:I

    .line 53
    const-string/jumbo v0, "timestamp"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/HistoryWallet;->timestamp:J

    .line 54
    const-string/jumbo v0, "transactionId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->transactionId:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->type:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "message"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/HistoryWallet;->message:Ljava/lang/String;

    .line 57
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
            "Lcom/bzbs/bean/HistoryWallet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 63
    :try_start_c
    new-instance v2, Lcom/bzbs/bean/HistoryWallet;

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bzbs/bean/HistoryWallet;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1c

    .line 61
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 68
    :cond_1b
    return-object v1

    .line 64
    :catch_1c
    move-exception v2

    goto :goto_18
.end method
