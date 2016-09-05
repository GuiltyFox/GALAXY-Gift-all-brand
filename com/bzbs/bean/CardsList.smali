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
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/bzbs/bean/CardsList;->Order:I

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bzbs/bean/CardsList;->historyCardsList:Ljava/util/ArrayList;

    .line 32
    const-string/jumbo v1, "amount"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/bzbs/bean/CardsList;->Amount:D

    .line 33
    const-string/jumbo v1, "order"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/bean/CardsList;->Order:I

    .line 34
    const-string/jumbo v1, "issuer"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/CardsList;->Issuer:Ljava/lang/String;

    .line 35
    const-string/jumbo v1, "imageUrl"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/CardsList;->ImageUrl:Ljava/lang/String;

    .line 36
    const-string/jumbo v1, "owner"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/CardsList;->Owner:Ljava/lang/String;

    .line 37
    const-string/jumbo v1, "timestamp"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bzbs/bean/CardsList;->Timestamp:J

    .line 38
    const-string/jumbo v1, "cardId"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/CardsList;->cardId:Ljava/lang/String;

    .line 41
    :try_start_4c
    const-string/jumbo v1, "history"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/bzbs/bean/CardsList;->historyCardsList:Ljava/util/ArrayList;

    .line 44
    :goto_5a
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_72

    .line 45
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 46
    iget-object v3, p0, Lcom/bzbs/bean/CardsList;->historyCardsList:Ljava/util/ArrayList;

    new-instance v4, Lcom/bzbs/bean/HistoryCardsList;

    invoke-direct {v4, v2}, Lcom/bzbs/bean/HistoryCardsList;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_6e} :catch_71

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 48
    :catch_71
    move-exception v0

    .line 52
    :cond_72
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
