.class public Lcom/samsung/privilege/bean/Sticker;
.super Ljava/lang/Object;
.source "Sticker.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public Name:Ljava/lang/String;

.field public PartitionKey:Ljava/lang/String;

.field public PictureUrl:Ljava/lang/String;

.field public StickerKey:Ljava/lang/String;

.field public Text:Ljava/lang/String;

.field public Timestamp:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Sticker;->Text:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Sticker;->Name:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Sticker;->StickerKey:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Sticker;->PictureUrl:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Sticker;->PartitionKey:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Sticker;->Text:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Sticker;->Name:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Sticker;->StickerKey:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Sticker;->PictureUrl:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Sticker;->PartitionKey:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/samsung/privilege/bean/Sticker;->Text:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/samsung/privilege/bean/Sticker;->PictureUrl:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Sticker;->Text:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Sticker;->Name:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Sticker;->StickerKey:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Sticker;->PictureUrl:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Sticker;->PartitionKey:Ljava/lang/String;

    .line 30
    const-string v0, "Text"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Sticker;->Text:Ljava/lang/String;

    .line 31
    const-string v0, "Name"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Sticker;->Name:Ljava/lang/String;

    .line 32
    const-string v0, "StickerKey"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Sticker;->StickerKey:Ljava/lang/String;

    .line 33
    const-string v0, "PictureUrl"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Sticker;->PictureUrl:Ljava/lang/String;

    .line 34
    const-string v0, "Timestamp"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/bean/Sticker;->Timestamp:J

    .line 35
    const-string v0, "PartitionKey"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Sticker;->PartitionKey:Ljava/lang/String;

    .line 37
    return-void
.end method
