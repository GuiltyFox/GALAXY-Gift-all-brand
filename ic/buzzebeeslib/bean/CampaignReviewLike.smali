.class public Lic/buzzebeeslib/bean/CampaignReviewLike;
.super Ljava/lang/Object;
.source "CampaignReviewLike.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public BuzzId:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public RowKey:Ljava/lang/String;

.field public UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReviewLike;->UserId:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReviewLike;->BuzzId:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReviewLike;->RowKey:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReviewLike;->Name:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReviewLike;->UserId:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReviewLike;->BuzzId:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReviewLike;->RowKey:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReviewLike;->Name:Ljava/lang/String;

    .line 31
    const-string v0, "UserId"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReviewLike;->UserId:Ljava/lang/String;

    .line 32
    const-string v0, "BuzzId"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReviewLike;->BuzzId:Ljava/lang/String;

    .line 33
    const-string v0, "RowKey"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReviewLike;->RowKey:Ljava/lang/String;

    .line 34
    const-string v0, "Name"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignReviewLike;->Name:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public GetProfileImage(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 38
    const-string v0, "PONG"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/bean/CampaignReviewLike;->UserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/picture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "api/profile/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/bean/CampaignReviewLike;->UserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/picture"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
