.class public Lcom/bzbs/bean/NFCPlan;
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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Id:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->AgencyId:Ljava/lang/String;

    .line 16
    iput-wide v2, p0, Lcom/bzbs/bean/NFCPlan;->StartTime:J

    .line 17
    iput-wide v2, p0, Lcom/bzbs/bean/NFCPlan;->EndTime:J

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->NfcInfo:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Url:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->AndroidApp:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->IosApp:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Message:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Place:Ljava/lang/String;

    .line 25
    iput v1, p0, Lcom/bzbs/bean/NFCPlan;->CampaignId:I

    .line 26
    iput-boolean v1, p0, Lcom/bzbs/bean/NFCPlan;->RequiredActionBeforeRedeem:Z

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Share_name:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Share_caption:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Share_picture:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Share_link:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Share_description:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lcom/bzbs/bean/NFCPlan;->Share_RequireForReDeem:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Id:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->AgencyId:Ljava/lang/String;

    .line 16
    iput-wide v2, p0, Lcom/bzbs/bean/NFCPlan;->StartTime:J

    .line 17
    iput-wide v2, p0, Lcom/bzbs/bean/NFCPlan;->EndTime:J

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->NfcInfo:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Url:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->AndroidApp:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->IosApp:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Message:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Place:Ljava/lang/String;

    .line 25
    iput v1, p0, Lcom/bzbs/bean/NFCPlan;->CampaignId:I

    .line 26
    iput-boolean v1, p0, Lcom/bzbs/bean/NFCPlan;->RequiredActionBeforeRedeem:Z

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Share_name:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Share_caption:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Share_picture:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Share_link:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Share_description:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lcom/bzbs/bean/NFCPlan;->Share_RequireForReDeem:Z

    .line 44
    const-string/jumbo v0, "PlanDetail"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 46
    const-string/jumbo v0, "Id"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    .line 49
    :cond_78
    const-string/jumbo v0, "Id"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Id:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "AgencyId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->AgencyId:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "StartTime"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/NFCPlan;->StartTime:J

    .line 52
    const-string/jumbo v0, "EndTime"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/NFCPlan;->EndTime:J

    .line 53
    const-string/jumbo v0, "Type"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "NfcInfo"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->NfcInfo:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "Url"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Url:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "AndroidApp"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->AndroidApp:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "IosApp"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->IosApp:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "Message"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Message:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "Place"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Place:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "CampaignId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/NFCPlan;->CampaignId:I

    .line 61
    const-string/jumbo v0, "RequiredActionBeforeRedeem"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/NFCPlan;->RequiredActionBeforeRedeem:Z

    .line 63
    const-string/jumbo v0, "Share_name"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Share_name:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "Share_caption"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Share_caption:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "Share_picture"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Share_picture:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "Url"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Share_link:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, "Share_description"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCPlan;->Share_description:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "Share_RequireForReDeem"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/NFCPlan;->Share_RequireForReDeem:Z

    .line 69
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 36
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
