.class public Lcom/bzbs/marketplace/sticker/Sticker;
.super Ljava/lang/Object;
.source "Sticker.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/Sticker;->a:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/Sticker;->b:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/Sticker;->c:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/Sticker;->d:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/Sticker;->f:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/Sticker;->a:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/Sticker;->b:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/Sticker;->c:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/Sticker;->d:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/Sticker;->f:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "Text"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/Sticker;->a:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "Name"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/Sticker;->b:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "StickerKey"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/Sticker;->c:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "PictureUrl"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/Sticker;->d:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "Timestamp"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/marketplace/sticker/Sticker;->e:J

    .line 41
    const-string/jumbo v0, "PartitionKey"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/sticker/Sticker;->f:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bzbs/marketplace/sticker/Sticker;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bzbs/marketplace/sticker/Sticker;->d:Ljava/lang/String;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 27
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
