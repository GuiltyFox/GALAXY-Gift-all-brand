.class public Lcom/bzbs/bean/CampaignReview;
.super Ljava/lang/Object;
.source "CampaignReview.java"

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
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/bean/CampaignReview;->is_text_show_all:Z

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/bean/CampaignReview;->is_text_show_all:Z

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "PartitionKey"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignReview;->PartitionKey:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "RowKey"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignReview;->RowKey:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "BuzzKey"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignReview;->BuzzKey:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "Timestamp"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/CampaignReview;->Timestamp:J

    .line 64
    const-string/jumbo v0, "CreatedTime"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/CampaignReview;->CreatedTime:J

    .line 65
    const-string/jumbo v0, "UserId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignReview;->UserId:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "Name"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignReview;->Name:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, "Message"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignReview;->Message:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "Rating"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignReview;->Rating:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "PlaceId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignReview;->PlaceId:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "PlaceName"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignReview;->PlaceName:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "PostId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignReview;->PostId:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "PhotoId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignReview;->PhotoId:Ljava/lang/String;

    .line 77
    const-string/jumbo v0, "ImageUrl"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignReview;->ImageUrl:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "Height"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/CampaignReview;->Height:D

    .line 80
    const-string/jumbo v0, "Width"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/CampaignReview;->Width:D

    .line 82
    const-string/jumbo v0, "Likes"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/CampaignReview;->Likes:I

    .line 83
    const-string/jumbo v0, "IsLiked"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/CampaignReview;->IsLiked:Z

    .line 85
    const-string/jumbo v0, "CommentCount"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/CampaignReview;->CommentCount:I

    .line 87
    const-string/jumbo v0, "Sticker"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignReview;->Sticker:Ljava/lang/String;

    .line 88
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
            "Lcom/bzbs/bean/CampaignReview;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 94
    :try_start_c
    new-instance v2, Lcom/bzbs/bean/CampaignReview;

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bzbs/bean/CampaignReview;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1c

    .line 92
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 99
    :cond_1b
    return-object v1

    .line 95
    :catch_1c
    move-exception v2

    goto :goto_18
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 56
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp_timeHuman()Ljava/lang/String;
    .registers 7

    .prologue
    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "dd MMM yyyy HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/bzbs/bean/CampaignReview;->Timestamp:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 48
    return-object v0
.end method
