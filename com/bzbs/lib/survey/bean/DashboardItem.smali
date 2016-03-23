.class public Lcom/bzbs/lib/survey/bean/DashboardItem;
.super Ljava/lang/Object;
.source "DashboardItem.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public agency_id:Ljava/lang/String;

.field public and_ns:Ljava/lang/String;

.field public cat:Ljava/lang/String;

.field public id:I

.field public image_url:Ljava/lang/String;

.field public line1:Ljava/lang/String;

.field public line2:Ljava/lang/String;

.field public menu:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public sub_dashboard_items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/bean/DashboardItem;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->image_url:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->type:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->line1:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->line2:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->id:I

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->cat:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->url:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->menu:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->size:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->and_ns:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->agency_id:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->image_url:Ljava/lang/String;

    .line 14
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->type:Ljava/lang/String;

    .line 15
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->line1:Ljava/lang/String;

    .line 16
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->line2:Ljava/lang/String;

    .line 17
    const/4 v2, 0x0

    iput v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->id:I

    .line 18
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->cat:Ljava/lang/String;

    .line 19
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->url:Ljava/lang/String;

    .line 20
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->menu:Ljava/lang/String;

    .line 21
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->size:Ljava/lang/String;

    .line 22
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->and_ns:Ljava/lang/String;

    .line 23
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->agency_id:Ljava/lang/String;

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    .line 60
    const-string/jumbo v2, "image_url"

    invoke-static {p1, v2}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->image_url:Ljava/lang/String;

    .line 61
    const-string/jumbo v2, "type"

    invoke-static {p1, v2}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->type:Ljava/lang/String;

    .line 62
    const-string/jumbo v2, "line1"

    invoke-static {p1, v2}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->line1:Ljava/lang/String;

    .line 63
    const-string/jumbo v2, "line2"

    invoke-static {p1, v2}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->line2:Ljava/lang/String;

    .line 64
    const-string/jumbo v2, "id"

    invoke-static {p1, v2}, Lcom/bzbs/lib/survey/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->id:I

    .line 65
    const-string/jumbo v2, "cat"

    invoke-static {p1, v2}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->cat:Ljava/lang/String;

    .line 66
    const-string/jumbo v2, "url"

    invoke-static {p1, v2}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->url:Ljava/lang/String;

    .line 67
    const-string/jumbo v2, "menu"

    invoke-static {p1, v2}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->menu:Ljava/lang/String;

    .line 68
    const-string/jumbo v2, "size"

    invoke-static {p1, v2}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->size:Ljava/lang/String;

    .line 70
    const-string/jumbo v2, "and_ns"

    invoke-static {p1, v2}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->and_ns:Ljava/lang/String;

    .line 71
    const-string/jumbo v2, "agency_id"

    invoke-static {p1, v2}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->agency_id:Ljava/lang/String;

    .line 74
    :try_start_a2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    .line 76
    const-string/jumbo v2, "subcampaigndetails"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 77
    .local v1, "jsonSubitems":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_c9

    .line 78
    iget-object v2, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    new-instance v3, Lcom/bzbs/lib/survey/bean/DashboardItem;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bzbs/lib/survey/bean/DashboardItem;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_c5} :catch_c8

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_b1

    .line 80
    .end local v0    # "i":I
    .end local v1    # "jsonSubitems":Lorg/json/JSONArray;
    :catch_c8
    move-exception v2

    .line 83
    :cond_c9
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
    .line 52
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public image_url_large()Ljava/lang/String;
    .registers 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 45
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->image_url:Ljava/lang/String;

    const-string/jumbo v1, "?"

    const-string/jumbo v2, "-large?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_1b
    return-object v0

    :cond_1c
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->image_url:Ljava/lang/String;

    goto :goto_1b
.end method

.method public image_url_small()Ljava/lang/String;
    .registers 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 37
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->image_url:Ljava/lang/String;

    const-string/jumbo v1, "?"

    const-string/jumbo v2, "-small?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_1b
    return-object v0

    :cond_1c
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->image_url:Ljava/lang/String;

    goto :goto_1b
.end method

.method public image_url_thumb()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 29
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->image_url:Ljava/lang/String;

    const-string/jumbo v1, "?"

    const-string/jumbo v2, "-thumbnail?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_1b
    return-object v0

    :cond_1c
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/DashboardItem;->image_url:Ljava/lang/String;

    goto :goto_1b
.end method
