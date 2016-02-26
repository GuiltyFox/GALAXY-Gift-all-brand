.class public Lcom/samsung/privilege/bean/PlaceReview;
.super Ljava/lang/Object;
.source "PlaceReview.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public BuzzKey:Ljava/lang/String;

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
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/PlaceReview;->is_text_show_all:Z

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/PlaceReview;->text_show_all:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/PlaceReview;->text_show_trim:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/PlaceReview;->is_text_show_all:Z

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/PlaceReview;->text_show_all:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/PlaceReview;->text_show_trim:Ljava/lang/String;

    .line 49
    const-string v0, "PartitionKey"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/PlaceReview;->PartitionKey:Ljava/lang/String;

    .line 50
    const-string v0, "RowKey"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/PlaceReview;->RowKey:Ljava/lang/String;

    .line 51
    const-string v0, "BuzzKey"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/PlaceReview;->BuzzKey:Ljava/lang/String;

    .line 52
    const-string v0, "Timestamp"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/bean/PlaceReview;->Timestamp:J

    .line 53
    const-string v0, "UserId"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/PlaceReview;->UserId:Ljava/lang/String;

    .line 54
    const-string v0, "Name"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/PlaceReview;->Name:Ljava/lang/String;

    .line 55
    const-string v0, "Message"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/PlaceReview;->Message:Ljava/lang/String;

    .line 57
    const-string v0, "Rating"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/PlaceReview;->Rating:Ljava/lang/String;

    .line 59
    const-string v0, "PlaceId"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/PlaceReview;->PlaceId:Ljava/lang/String;

    .line 60
    const-string v0, "PlaceName"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/PlaceReview;->PlaceName:Ljava/lang/String;

    .line 62
    const-string v0, "PostId"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/PlaceReview;->PostId:Ljava/lang/String;

    .line 63
    const-string v0, "PhotoId"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/PlaceReview;->PhotoId:Ljava/lang/String;

    .line 65
    const-string v0, "ImageUrl"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/PlaceReview;->ImageUrl:Ljava/lang/String;

    .line 67
    const-string v0, "Height"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/bean/PlaceReview;->Height:D

    .line 68
    const-string v0, "Width"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/bean/PlaceReview;->Width:D

    .line 70
    const-string v0, "Likes"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/bean/PlaceReview;->Likes:I

    .line 71
    const-string v0, "IsLiked"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/PlaceReview;->IsLiked:Z

    .line 72
    return-void
.end method


# virtual methods
.method public getTimestamp_timeHuman()Ljava/lang/String;
    .registers 9

    .prologue
    .line 40
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd MMM yyyy HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/samsung/privilege/bean/PlaceReview;->Timestamp:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "dateHuman":Ljava/lang/String;
    return-object v0
.end method
