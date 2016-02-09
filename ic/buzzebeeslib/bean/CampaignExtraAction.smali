.class public Lic/buzzebeeslib/bean/CampaignExtraAction;
.super Ljava/lang/Object;
.source "CampaignExtraAction.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public and_link:Ljava/lang/String;

.field public and_ns:Ljava/lang/String;

.field public ios_itunes:Ljava/lang/String;

.field public ios_link:Ljava/lang/String;

.field public ios_schema:Ljava/lang/String;

.field public link:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignExtraAction;->type:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignExtraAction;->link:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignExtraAction;->ios_link:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignExtraAction;->and_link:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignExtraAction;->ios_schema:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignExtraAction;->ios_itunes:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignExtraAction;->and_ns:Ljava/lang/String;

    .line 24
    const-string v0, "type"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignExtraAction;->type:Ljava/lang/String;

    .line 25
    const-string v0, "link"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignExtraAction;->link:Ljava/lang/String;

    .line 26
    const-string v0, "ios_link"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignExtraAction;->ios_link:Ljava/lang/String;

    .line 27
    const-string v0, "and_link"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignExtraAction;->and_link:Ljava/lang/String;

    .line 28
    const-string v0, "ios_schema"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignExtraAction;->ios_schema:Ljava/lang/String;

    .line 29
    const-string v0, "ios_itunes"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignExtraAction;->ios_itunes:Ljava/lang/String;

    .line 30
    const-string v0, "and_ns"

    invoke-static {p1, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/bean/CampaignExtraAction;->and_ns:Ljava/lang/String;

    .line 31
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
    .line 20
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
