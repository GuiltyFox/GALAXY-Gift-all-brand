.class public Lcom/bzbs/bean/NFCResult;
.super Ljava/lang/Object;
.source "NFCResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final LOGCAT:Ljava/lang/String;

.field public agency_id:Ljava/lang/String;

.field public alert_no_plan:Ljava/lang/String;

.field public created_time:J

.field public fb_place_id:Ljava/lang/String;

.field public is_write_back:Z

.field public location_id:Ljava/lang/String;

.field public nfc_info:Ljava/lang/String;

.field public planes_action:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/NFCPlan;",
            ">;"
        }
    .end annotation
.end field

.field public planes_promp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/NFCPlan;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, "buzzebees.nfc"

    iput-object v0, p0, Lcom/bzbs/bean/NFCResult;->LOGCAT:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCResult;->type:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCResult;->agency_id:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCResult;->location_id:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCResult;->fb_place_id:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCResult;->nfc_info:Ljava/lang/String;

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bzbs/bean/NFCResult;->created_time:J

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/bean/NFCResult;->is_write_back:Z

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCResult;->alert_no_plan:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/bean/NFCResult;->planes_action:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v1, "buzzebees.nfc"

    iput-object v1, p0, Lcom/bzbs/bean/NFCResult;->LOGCAT:Ljava/lang/String;

    .line 17
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/NFCResult;->type:Ljava/lang/String;

    .line 18
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/NFCResult;->agency_id:Ljava/lang/String;

    .line 19
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/NFCResult;->location_id:Ljava/lang/String;

    .line 20
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/NFCResult;->fb_place_id:Ljava/lang/String;

    .line 21
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/NFCResult;->nfc_info:Ljava/lang/String;

    .line 22
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bzbs/bean/NFCResult;->created_time:J

    .line 23
    iput-boolean v0, p0, Lcom/bzbs/bean/NFCResult;->is_write_back:Z

    .line 24
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/NFCResult;->alert_no_plan:Ljava/lang/String;

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bzbs/bean/NFCResult;->planes_action:Ljava/util/ArrayList;

    .line 38
    const-string/jumbo v1, "type"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/NFCResult;->type:Ljava/lang/String;

    .line 39
    const-string/jumbo v1, "agency_id"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/NFCResult;->agency_id:Ljava/lang/String;

    .line 40
    const-string/jumbo v1, "location_id"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/NFCResult;->location_id:Ljava/lang/String;

    .line 41
    const-string/jumbo v1, "fb_place_id"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/NFCResult;->fb_place_id:Ljava/lang/String;

    .line 42
    const-string/jumbo v1, "nfc_info"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/NFCResult;->nfc_info:Ljava/lang/String;

    .line 43
    const-string/jumbo v1, "created_time"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bzbs/bean/NFCResult;->created_time:J

    .line 44
    const-string/jumbo v1, "is_write_back"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/NFCResult;->is_write_back:Z

    .line 45
    const-string/jumbo v1, "alert_no_plan"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/NFCResult;->alert_no_plan:Ljava/lang/String;

    .line 48
    :try_start_87
    const-string/jumbo v1, "plans"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 49
    :goto_8e
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_e8

    .line 50
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 51
    new-instance v3, Lcom/bzbs/bean/NFCPlan;

    invoke-direct {v3, v2}, Lcom/bzbs/bean/NFCPlan;-><init>(Lorg/json/JSONObject;)V

    .line 52
    iget-object v2, v3, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "redeem"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 53
    iget-object v2, p0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :goto_b1
    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    .line 54
    :cond_b4
    iget-object v2, v3, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "campaign"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 55
    iget-object v2, p0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c8
    .catch Lorg/json/JSONException; {:try_start_87 .. :try_end_c8} :catch_c9

    goto :goto_b1

    .line 62
    :catch_c9
    move-exception v0

    .line 63
    const-string/jumbo v1, "buzzebees.nfc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(NFCResult|JSONException):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_e8
    return-void

    .line 56
    :cond_e9
    :try_start_e9
    iget-object v2, v3, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "share"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_fe

    .line 57
    iget-object v2, p0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b1

    .line 59
    :cond_fe
    iget-object v2, p0, Lcom/bzbs/bean/NFCResult;->planes_action:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_103
    .catch Lorg/json/JSONException; {:try_start_e9 .. :try_end_103} :catch_c9

    goto :goto_b1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
