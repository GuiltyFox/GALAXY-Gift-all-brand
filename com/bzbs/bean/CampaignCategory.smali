.class public Lcom/bzbs/bean/CampaignCategory;
.super Ljava/lang/Object;
.source "CampaignCategory.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cat:I

.field public count:I

.field public dashboard_key:Ljava/lang/String;

.field public firstpage:Z

.field public id:Ljava/lang/String;

.field public image_url_active:Ljava/lang/String;

.field public image_url_inactive:Ljava/lang/String;

.field public list_config:Ljava/lang/String;

.field public mode:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public name_en:Ljava/lang/String;

.field public name_th:Ljava/lang/String;

.field public selected:Z

.field public tags:Ljava/lang/String;

.field public uservisibility:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->id:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->mode:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->tags:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->name:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->name_en:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->name_th:Ljava/lang/String;

    .line 17
    iput v2, p0, Lcom/bzbs/bean/CampaignCategory;->count:I

    .line 18
    iput v2, p0, Lcom/bzbs/bean/CampaignCategory;->cat:I

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->list_config:Ljava/lang/String;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bzbs/bean/CampaignCategory;->uservisibility:J

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->image_url_active:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->image_url_inactive:Ljava/lang/String;

    .line 26
    iput-boolean v2, p0, Lcom/bzbs/bean/CampaignCategory;->firstpage:Z

    .line 27
    iput-boolean v2, p0, Lcom/bzbs/bean/CampaignCategory;->selected:Z

    .line 30
    iput-object p1, p0, Lcom/bzbs/bean/CampaignCategory;->name:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->id:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->mode:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->tags:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->name:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->name_en:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->name_th:Ljava/lang/String;

    .line 17
    iput v2, p0, Lcom/bzbs/bean/CampaignCategory;->count:I

    .line 18
    iput v2, p0, Lcom/bzbs/bean/CampaignCategory;->cat:I

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->list_config:Ljava/lang/String;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bzbs/bean/CampaignCategory;->uservisibility:J

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->image_url_active:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->image_url_inactive:Ljava/lang/String;

    .line 26
    iput-boolean v2, p0, Lcom/bzbs/bean/CampaignCategory;->firstpage:Z

    .line 27
    iput-boolean v2, p0, Lcom/bzbs/bean/CampaignCategory;->selected:Z

    .line 34
    const-string/jumbo v0, "id"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->id:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "mode"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->mode:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "tags"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->tags:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->name:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "name_en"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->name_en:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "name_th"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->name_th:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "count"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/CampaignCategory;->count:I

    .line 41
    const-string/jumbo v0, "cat"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/CampaignCategory;->cat:I

    .line 42
    const-string/jumbo v0, "dashboard_key"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "list_config"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->list_config:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "uservisibility"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bzbs/bean/CampaignCategory;->uservisibility:J

    .line 46
    const-string/jumbo v0, "image_url_active"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->image_url_active:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "image_url_inactive"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignCategory;->image_url_inactive:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "firstpage"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/CampaignCategory;->firstpage:Z

    .line 50
    const-string/jumbo v0, "selected"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/CampaignCategory;->selected:Z

    .line 51
    return-void
.end method


# virtual methods
.method public GetKey()Ljava/lang/String;
    .registers 3

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bzbs/bean/CampaignCategory;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/bean/CampaignCategory;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bzbs/bean/CampaignCategory;->cat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
