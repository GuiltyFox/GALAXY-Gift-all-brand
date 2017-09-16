.class public Lcom/bzbs/bean/StampAgency;
.super Ljava/lang/Object;
.source "StampAgency.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public active:Z

.field public agencyId:Ljava/lang/String;

.field public amount:D

.field public backgroundUrl:Ljava/lang/String;

.field public cardId:Ljava/lang/String;

.field public codeExpireIn:J

.field public currentQuantity:I

.field public description:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public issuer:Ljava/lang/String;

.field public maxQuantity:I

.field public name:Ljava/lang/String;

.field public owner:Ljava/lang/String;

.field public pricePerStamp:D

.field public stampId:Ljava/lang/String;

.field public stampImageUrl:Ljava/lang/String;

.field public stampRawScore:I

.field public stampScore:I

.field public stampSpecialScore:I

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/StampAgency;->name:Ljava/lang/String;

    .line 22
    const/16 v0, 0xa

    iput v0, p0, Lcom/bzbs/bean/StampAgency;->maxQuantity:I

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/StampAgency;->name:Ljava/lang/String;

    .line 22
    const/16 v0, 0xa

    iput v0, p0, Lcom/bzbs/bean/StampAgency;->maxQuantity:I

    .line 41
    const-string/jumbo v0, "amount"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/StampAgency;->amount:D

    .line 42
    const-string/jumbo v0, "agencyId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/StampAgency;->agencyId:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "cardId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/StampAgency;->cardId:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "issuer"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/StampAgency;->issuer:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "stampId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/StampAgency;->stampId:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "imageUrl"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/StampAgency;->imageUrl:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/StampAgency;->owner:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "timestamp"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/StampAgency;->timestamp:J

    .line 49
    const-string/jumbo v0, "active"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/StampAgency;->active:Z

    .line 50
    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/StampAgency;->name:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "description"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/StampAgency;->description:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "stampImageUrl"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/StampAgency;->stampImageUrl:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "maxQuantity"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/StampAgency;->maxQuantity:I

    .line 54
    const-string/jumbo v0, "currentQuantity"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/StampAgency;->currentQuantity:I

    .line 55
    const-string/jumbo v0, "pricePerStamp"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/StampAgency;->pricePerStamp:D

    .line 56
    const-string/jumbo v0, "codeExpireIn"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/StampAgency;->codeExpireIn:J

    .line 57
    const-string/jumbo v0, "stampRawScore"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/StampAgency;->stampRawScore:I

    .line 58
    const-string/jumbo v0, "stampScore"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/StampAgency;->stampScore:I

    .line 59
    const-string/jumbo v0, "stampSpecialScore"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/StampAgency;->stampSpecialScore:I

    .line 60
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
            "Lcom/bzbs/bean/StampAgency;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 66
    :try_start_c
    new-instance v2, Lcom/bzbs/bean/StampAgency;

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bzbs/bean/StampAgency;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1c

    .line 64
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 71
    :cond_1b
    return-object v1

    .line 67
    :catch_1c
    move-exception v2

    goto :goto_18
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
