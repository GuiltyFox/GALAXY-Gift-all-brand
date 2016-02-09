.class public Lcom/samsung/privilege/bean/NFCPlan;
.super Ljava/lang/Object;
.source "NFCPlan.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public AgencyId:Ljava/lang/String;

.field public AndroidApp:Ljava/lang/String;

.field public CampaignId:I

.field public EndTime:J

.field public Id:Ljava/lang/String;

.field public IosApp:Ljava/lang/String;

.field public Message:Ljava/lang/String;

.field public NfcInfo:Ljava/lang/String;

.field public Place:Ljava/lang/String;

.field public PlanDetail:Ljava/lang/String;

.field public RequiredActionBeforeRedeem:Z

.field public Share_RequireForReDeem:Z

.field public Share_caption:Ljava/lang/String;

.field public Share_description:Ljava/lang/String;

.field public Share_link:Ljava/lang/String;

.field public Share_name:Ljava/lang/String;

.field public Share_picture:Ljava/lang/String;

.field public StartTime:J

.field public Type:Ljava/lang/String;

.field public Url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Id:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->AgencyId:Ljava/lang/String;

    .line 15
    iput-wide v2, p0, Lcom/samsung/privilege/bean/NFCPlan;->StartTime:J

    .line 16
    iput-wide v2, p0, Lcom/samsung/privilege/bean/NFCPlan;->EndTime:J

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->NfcInfo:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Url:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->AndroidApp:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->IosApp:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Message:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Place:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/samsung/privilege/bean/NFCPlan;->CampaignId:I

    .line 25
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/NFCPlan;->RequiredActionBeforeRedeem:Z

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Share_name:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Share_caption:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Share_picture:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Share_link:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Share_description:Ljava/lang/String;

    .line 32
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/NFCPlan;->Share_RequireForReDeem:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Id:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->AgencyId:Ljava/lang/String;

    .line 15
    iput-wide v2, p0, Lcom/samsung/privilege/bean/NFCPlan;->StartTime:J

    .line 16
    iput-wide v2, p0, Lcom/samsung/privilege/bean/NFCPlan;->EndTime:J

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->NfcInfo:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Url:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->AndroidApp:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->IosApp:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Message:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Place:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/samsung/privilege/bean/NFCPlan;->CampaignId:I

    .line 25
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/NFCPlan;->RequiredActionBeforeRedeem:Z

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Share_name:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Share_caption:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Share_picture:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Share_link:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Share_description:Ljava/lang/String;

    .line 32
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/NFCPlan;->Share_RequireForReDeem:Z

    .line 43
    const-string v0, "PlanDetail"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 45
    const-string v0, "Id"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    .line 48
    :cond_66
    const-string v0, "Id"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Id:Ljava/lang/String;

    .line 49
    const-string v0, "AgencyId"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->AgencyId:Ljava/lang/String;

    .line 50
    const-string v0, "StartTime"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->StartTime:J

    .line 51
    const-string v0, "EndTime"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->EndTime:J

    .line 52
    const-string v0, "Type"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    .line 53
    const-string v0, "NfcInfo"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->NfcInfo:Ljava/lang/String;

    .line 54
    const-string v0, "Url"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Url:Ljava/lang/String;

    .line 55
    const-string v0, "AndroidApp"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->AndroidApp:Ljava/lang/String;

    .line 56
    const-string v0, "IosApp"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->IosApp:Ljava/lang/String;

    .line 57
    const-string v0, "Message"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Message:Ljava/lang/String;

    .line 58
    const-string v0, "Place"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Place:Ljava/lang/String;

    .line 59
    const-string v0, "CampaignId"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->CampaignId:I

    .line 60
    const-string v0, "RequiredActionBeforeRedeem"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->RequiredActionBeforeRedeem:Z

    .line 62
    const-string v0, "Share_name"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Share_name:Ljava/lang/String;

    .line 63
    const-string v0, "Share_caption"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Share_caption:Ljava/lang/String;

    .line 64
    const-string v0, "Share_picture"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Share_picture:Ljava/lang/String;

    .line 65
    const-string v0, "Url"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Share_link:Ljava/lang/String;

    .line 66
    const-string v0, "Share_description"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Share_description:Ljava/lang/String;

    .line 67
    const-string v0, "Share_RequireForReDeem"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/NFCPlan;->Share_RequireForReDeem:Z

    .line 68
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
    .line 35
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
