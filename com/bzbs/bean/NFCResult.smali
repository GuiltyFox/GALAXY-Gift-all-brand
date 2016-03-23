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
    .registers 10
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v5, "buzzebees.nfc"

    iput-object v5, p0, Lcom/bzbs/bean/NFCResult;->LOGCAT:Ljava/lang/String;

    .line 17
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/bzbs/bean/NFCResult;->type:Ljava/lang/String;

    .line 18
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/bzbs/bean/NFCResult;->agency_id:Ljava/lang/String;

    .line 19
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/bzbs/bean/NFCResult;->location_id:Ljava/lang/String;

    .line 20
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/bzbs/bean/NFCResult;->fb_place_id:Ljava/lang/String;

    .line 21
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/bzbs/bean/NFCResult;->nfc_info:Ljava/lang/String;

    .line 22
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/bzbs/bean/NFCResult;->created_time:J

    .line 23
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/bzbs/bean/NFCResult;->is_write_back:Z

    .line 24
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/bzbs/bean/NFCResult;->alert_no_plan:Ljava/lang/String;

    .line 26
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    .line 27
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/bzbs/bean/NFCResult;->planes_action:Ljava/util/ArrayList;

    .line 38
    const-string/jumbo v5, "type"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/NFCResult;->type:Ljava/lang/String;

    .line 39
    const-string/jumbo v5, "agency_id"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/NFCResult;->agency_id:Ljava/lang/String;

    .line 40
    const-string/jumbo v5, "location_id"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/NFCResult;->location_id:Ljava/lang/String;

    .line 41
    const-string/jumbo v5, "fb_place_id"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/NFCResult;->fb_place_id:Ljava/lang/String;

    .line 42
    const-string/jumbo v5, "nfc_info"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/NFCResult;->nfc_info:Ljava/lang/String;

    .line 43
    const-string/jumbo v5, "created_time"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/bzbs/bean/NFCResult;->created_time:J

    .line 44
    const-string/jumbo v5, "is_write_back"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/bzbs/bean/NFCResult;->is_write_back:Z

    .line 45
    const-string/jumbo v5, "alert_no_plan"

    invoke-static {p1, v5}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bzbs/bean/NFCResult;->alert_no_plan:Ljava/lang/String;

    .line 48
    :try_start_87
    const-string/jumbo v5, "plans"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 49
    .local v3, "json_plans":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8f
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_e9

    .line 50
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 51
    .local v2, "jsonPlan":Lorg/json/JSONObject;
    new-instance v4, Lcom/bzbs/bean/NFCPlan;

    invoke-direct {v4, v2}, Lcom/bzbs/bean/NFCPlan;-><init>(Lorg/json/JSONObject;)V

    .line 52
    .local v4, "objNFCPlan":Lcom/bzbs/bean/NFCPlan;
    iget-object v5, v4, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "redeem"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 53
    iget-object v5, p0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :goto_b2
    add-int/lit8 v1, v1, 0x1

    goto :goto_8f

    .line 54
    :cond_b5
    iget-object v5, v4, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "campaign"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ea

    .line 55
    iget-object v5, p0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c9
    .catch Lorg/json/JSONException; {:try_start_87 .. :try_end_c9} :catch_ca

    goto :goto_b2

    .line 62
    .end local v1    # "i":I
    .end local v2    # "jsonPlan":Lorg/json/JSONObject;
    .end local v3    # "json_plans":Lorg/json/JSONArray;
    .end local v4    # "objNFCPlan":Lcom/bzbs/bean/NFCPlan;
    :catch_ca
    move-exception v0

    .line 63
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "buzzebees.nfc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(NFCResult|JSONException):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_e9
    return-void

    .line 56
    .restart local v1    # "i":I
    .restart local v2    # "jsonPlan":Lorg/json/JSONObject;
    .restart local v3    # "json_plans":Lorg/json/JSONArray;
    .restart local v4    # "objNFCPlan":Lcom/bzbs/bean/NFCPlan;
    :cond_ea
    :try_start_ea
    iget-object v5, v4, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "share"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ff

    .line 57
    iget-object v5, p0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b2

    .line 59
    :cond_ff
    iget-object v5, p0, Lcom/bzbs/bean/NFCResult;->planes_action:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_104
    .catch Lorg/json/JSONException; {:try_start_ea .. :try_end_104} :catch_ca

    goto :goto_b2
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
    .line 30
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
