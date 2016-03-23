.class public Lcom/bzbs/bean/CardsList;
.super Ljava/lang/Object;
.source "CardsList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public Amount:D

.field public ImageUrl:Ljava/lang/String;

.field public Issuer:Ljava/lang/String;

.field public Order:I

.field public Owner:Ljava/lang/String;

.field public Timestamp:J

.field public cardId:Ljava/lang/String;

.field public historyCardsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/HistoryCardsList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/bzbs/bean/CardsList;->Order:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/bean/CardsList;->historyCardsList:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 8
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v3, 0x0

    iput v3, p0, Lcom/bzbs/bean/CardsList;->Order:I

    .line 21
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/bzbs/bean/CardsList;->historyCardsList:Ljava/util/ArrayList;

    .line 32
    const-string/jumbo v3, "amount"

    invoke-static {p1, v3}, Lcom/bzbs/util/JsonUtil;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/bzbs/bean/CardsList;->Amount:D

    .line 33
    const-string/jumbo v3, "order"

    invoke-static {p1, v3}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/bzbs/bean/CardsList;->Order:I

    .line 34
    const-string/jumbo v3, "issuer"

    invoke-static {p1, v3}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bzbs/bean/CardsList;->Issuer:Ljava/lang/String;

    .line 35
    const-string/jumbo v3, "imageUrl"

    invoke-static {p1, v3}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bzbs/bean/CardsList;->ImageUrl:Ljava/lang/String;

    .line 36
    const-string/jumbo v3, "owner"

    invoke-static {p1, v3}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bzbs/bean/CardsList;->Owner:Ljava/lang/String;

    .line 37
    const-string/jumbo v3, "timestamp"

    invoke-static {p1, v3}, Lcom/bzbs/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bzbs/bean/CardsList;->Timestamp:J

    .line 38
    const-string/jumbo v3, "cardId"

    invoke-static {p1, v3}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bzbs/bean/CardsList;->cardId:Ljava/lang/String;

    .line 41
    :try_start_4c
    const-string/jumbo v3, "history"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 43
    .local v1, "jsHistory":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/bzbs/bean/CardsList;->historyCardsList:Ljava/util/ArrayList;

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_73

    .line 45
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 46
    .local v2, "jsObj":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/bzbs/bean/CardsList;->historyCardsList:Ljava/util/ArrayList;

    new-instance v4, Lcom/bzbs/bean/HistoryCardsList;

    invoke-direct {v4, v2}, Lcom/bzbs/bean/HistoryCardsList;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_6f} :catch_72

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 48
    .end local v0    # "i":I
    .end local v1    # "jsHistory":Lorg/json/JSONArray;
    .end local v2    # "jsObj":Lorg/json/JSONObject;
    :catch_72
    move-exception v3

    .line 52
    :cond_73
    return-void
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
    .line 28
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
