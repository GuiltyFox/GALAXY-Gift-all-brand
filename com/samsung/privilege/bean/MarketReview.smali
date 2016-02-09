.class public Lcom/samsung/privilege/bean/MarketReview;
.super Ljava/lang/Object;
.source "MarketReview.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public BuzzKey:Ljava/lang/String;

.field public CommentCount:I

.field public CreatedTime:J

.field public Height:D

.field public ImageUrl:Ljava/lang/String;

.field public IsLiked:Z

.field public Likes:I

.field public Message:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public PartitionKey:Ljava/lang/String;

.field public PhotoId:Ljava/lang/String;

.field public PlaceId:Ljava/lang/String;

.field public PlaceName:Ljava/lang/String;

.field public PostId:Ljava/lang/String;

.field public Rating:Ljava/lang/String;

.field public RowKey:Ljava/lang/String;

.field public Sticker:Ljava/lang/String;

.field public Timestamp:J

.field public UserId:Ljava/lang/String;

.field public Width:D

.field public is_text_show_all:Z

.field public text_show_all:Ljava/lang/String;

.field public text_show_trim:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/MarketReview;->is_text_show_all:Z

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MarketReview;->text_show_all:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MarketReview;->text_show_trim:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/MarketReview;->is_text_show_all:Z

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MarketReview;->text_show_all:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MarketReview;->text_show_trim:Ljava/lang/String;

    .line 56
    const-string v0, "PartitionKey"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/MarketReview;->PartitionKey:Ljava/lang/String;

    .line 57
    const-string v0, "RowKey"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/MarketReview;->RowKey:Ljava/lang/String;

    .line 58
    const-string v0, "BuzzKey"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/MarketReview;->BuzzKey:Ljava/lang/String;

    .line 59
    const-string v0, "Timestamp"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/bean/MarketReview;->Timestamp:J

    .line 60
    const-string v0, "CreatedTime"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/bean/MarketReview;->CreatedTime:J

    .line 61
    const-string v0, "UserId"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/MarketReview;->UserId:Ljava/lang/String;

    .line 62
    const-string v0, "Name"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/MarketReview;->Name:Ljava/lang/String;

    .line 63
    const-string v0, "Message"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/MarketReview;->Message:Ljava/lang/String;

    .line 65
    const-string v0, "Rating"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/MarketReview;->Rating:Ljava/lang/String;

    .line 67
    const-string v0, "PlaceId"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/MarketReview;->PlaceId:Ljava/lang/String;

    .line 68
    const-string v0, "PlaceName"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/MarketReview;->PlaceName:Ljava/lang/String;

    .line 70
    const-string v0, "PostId"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/MarketReview;->PostId:Ljava/lang/String;

    .line 71
    const-string v0, "PhotoId"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/MarketReview;->PhotoId:Ljava/lang/String;

    .line 73
    const-string v0, "ImageUrl"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/MarketReview;->ImageUrl:Ljava/lang/String;

    .line 75
    const-string v0, "Height"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/bean/MarketReview;->Height:D

    .line 76
    const-string v0, "Width"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/bean/MarketReview;->Width:D

    .line 78
    const-string v0, "Likes"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/bean/MarketReview;->Likes:I

    .line 79
    const-string v0, "IsLiked"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/MarketReview;->IsLiked:Z

    .line 81
    const-string v0, "CommentCount"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/bean/MarketReview;->CommentCount:I

    .line 83
    const-string v0, "Sticker"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/MarketReview;->Sticker:Ljava/lang/String;

    .line 84
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
    .line 53
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp_timeHuman()Ljava/lang/String;
    .registers 8

    .prologue
    .line 45
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd MMM yyyy HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/samsung/privilege/bean/MarketReview;->Timestamp:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "dateHuman":Ljava/lang/String;
    return-object v0
.end method
