.class public Lic/buzzebeeslib/bean/CampaignReview;
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
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->is_text_show_all:Z

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->is_text_show_all:Z

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->text_show_all:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->text_show_trim:Ljava/lang/String;

    .line 66
    const-string v0, "PartitionKey"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->PartitionKey:Ljava/lang/String;

    .line 67
    const-string v0, "RowKey"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->RowKey:Ljava/lang/String;

    .line 68
    const-string v0, "BuzzKey"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->BuzzKey:Ljava/lang/String;

    .line 69
    const-string v0, "Timestamp"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->Timestamp:J

    .line 70
    const-string v0, "CreatedTime"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->CreatedTime:J

    .line 71
    const-string v0, "UserId"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->UserId:Ljava/lang/String;

    .line 72
    const-string v0, "Name"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->Name:Ljava/lang/String;

    .line 73
    const-string v0, "Message"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->Message:Ljava/lang/String;

    .line 75
    const-string v0, "Rating"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->Rating:Ljava/lang/String;

    .line 77
    const-string v0, "PlaceId"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->PlaceId:Ljava/lang/String;

    .line 78
    const-string v0, "PlaceName"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->PlaceName:Ljava/lang/String;

    .line 80
    const-string v0, "PostId"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->PostId:Ljava/lang/String;

    .line 81
    const-string v0, "PhotoId"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->PhotoId:Ljava/lang/String;

    .line 83
    const-string v0, "ImageUrl"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->ImageUrl:Ljava/lang/String;

    .line 85
    const-string v0, "Height"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->Height:D

    .line 86
    const-string v0, "Width"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->Width:D

    .line 88
    const-string v0, "Likes"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->Likes:I

    .line 89
    const-string v0, "IsLiked"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->IsLiked:Z

    .line 91
    const-string v0, "CommentCount"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->CommentCount:I

    .line 93
    const-string v0, "Sticker"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReview;->Sticker:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method public GetProfileImage()Ljava/lang/String;
    .registers 5

    .prologue
    .line 45
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 46
    .local v0, "date":Ljava/util/Date;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "strDate":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "api/profile/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/bean/CampaignReview;->UserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/picture/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp_timeHuman()Ljava/lang/String;
    .registers 9

    .prologue
    .line 53
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd MMM yyyy HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lic/buzzebeeslib/bean/CampaignReview;->Timestamp:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "dateHuman":Ljava/lang/String;
    return-object v0
.end method
