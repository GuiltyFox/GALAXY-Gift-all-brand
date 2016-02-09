.class public Lcom/samsung/privilege/bean/DashboardItem;
.super Ljava/lang/Object;
.source "DashboardItem.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public agency_id:Ljava/lang/String;

.field public and_ns:Ljava/lang/String;

.field public and_ns_params:Ljava/lang/String;

.field public autoredeem:Z

.field public autoredeem_hideserial:Z

.field public autoredeem_showcode:Z

.field public autoredeem_url:Ljava/lang/String;

.field public campaignbarcode:Ljava/lang/String;

.field public campaigndetail_layout:Ljava/lang/String;

.field public campaigndiscount:I

.field public campaignpoint:I

.field public campaigntype:Ljava/lang/String;

.field public cat:Ljava/lang/String;

.field public dashboard_layout:Ljava/lang/String;

.field public ga_label:Ljava/lang/String;

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
            "Lcom/samsung/privilege/bean/DashboardItem;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public web_dis_autoresize:Z

.field public web_dis_clearcache:Z

.field public web_dis_javascript:Z

.field public web_dis_javascript_cowa:Z

.field public web_dis_scrollbar:Z

.field public web_dis_zoom:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->image_url:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->line2:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/samsung/privilege/bean/DashboardItem;->campaignpoint:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->campaignbarcode:Ljava/lang/String;

    .line 25
    iput v1, p0, Lcom/samsung/privilege/bean/DashboardItem;->campaigndiscount:I

    .line 26
    iput v1, p0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->cat:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->url:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->size:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->and_ns:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->and_ns_params:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->agency_id:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->campaigndetail_layout:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem:Z

    .line 38
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_showcode:Z

    .line 39
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_hideserial:Z

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_autoresize:Z

    .line 43
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_clearcache:Z

    .line 44
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_javascript:Z

    .line 45
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_javascript_cowa:Z

    .line 46
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_scrollbar:Z

    .line 47
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_zoom:Z

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->image_url:Ljava/lang/String;

    .line 19
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    .line 20
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    .line 21
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->line2:Ljava/lang/String;

    .line 22
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    .line 23
    iput v3, p0, Lcom/samsung/privilege/bean/DashboardItem;->campaignpoint:I

    .line 24
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->campaignbarcode:Ljava/lang/String;

    .line 25
    iput v3, p0, Lcom/samsung/privilege/bean/DashboardItem;->campaigndiscount:I

    .line 26
    iput v3, p0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    .line 27
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->cat:Ljava/lang/String;

    .line 28
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->url:Ljava/lang/String;

    .line 29
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    .line 30
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->size:Ljava/lang/String;

    .line 31
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->and_ns:Ljava/lang/String;

    .line 32
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->and_ns_params:Ljava/lang/String;

    .line 33
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->agency_id:Ljava/lang/String;

    .line 35
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    .line 36
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->campaigndetail_layout:Ljava/lang/String;

    .line 37
    iput-boolean v3, p0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem:Z

    .line 38
    iput-boolean v3, p0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_showcode:Z

    .line 39
    iput-boolean v3, p0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_hideserial:Z

    .line 40
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    .line 42
    iput-boolean v3, p0, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_autoresize:Z

    .line 43
    iput-boolean v3, p0, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_clearcache:Z

    .line 44
    iput-boolean v3, p0, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_javascript:Z

    .line 45
    iput-boolean v3, p0, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_javascript_cowa:Z

    .line 46
    iput-boolean v3, p0, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_scrollbar:Z

    .line 47
    iput-boolean v3, p0, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_zoom:Z

    .line 49
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    .line 110
    const-string v2, "image_url"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->image_url:Ljava/lang/String;

    .line 111
    const-string v2, "type"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    .line 112
    const-string v2, "line1"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->line1:Ljava/lang/String;

    .line 113
    const-string v2, "line2"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->line2:Ljava/lang/String;

    .line 114
    const-string v2, "campaigntype"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    .line 115
    const-string v2, "campaignpoint"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->campaignpoint:I

    .line 116
    const-string v2, "campaignbarcode"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->campaignbarcode:Ljava/lang/String;

    .line 117
    const-string v2, "campaigndiscount"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->campaigndiscount:I

    .line 118
    const-string v2, "id"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    .line 119
    const-string v2, "cat"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->cat:Ljava/lang/String;

    .line 120
    const-string v2, "url"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->url:Ljava/lang/String;

    .line 121
    const-string v2, "menu"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->menu:Ljava/lang/String;

    .line 122
    const-string v2, "size"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->size:Ljava/lang/String;

    .line 124
    const-string v2, "and_ns"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->and_ns:Ljava/lang/String;

    .line 125
    const-string v2, "and_ns_params"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->and_ns_params:Ljava/lang/String;

    .line 126
    const-string v2, "agency_id"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->agency_id:Ljava/lang/String;

    .line 128
    const-string v2, "dashboard_layout"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    .line 129
    const-string v2, "campaigndetail_layout"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->campaigndetail_layout:Ljava/lang/String;

    .line 130
    const-string v2, "autoredeem"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem:Z

    .line 131
    const-string v2, "autoredeem_showcode"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_showcode:Z

    .line 132
    const-string v2, "autoredeem_hideserial"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_hideserial:Z

    .line 133
    const-string v2, "autoredeem_url"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    .line 135
    const-string v2, "web_dis_autoresize"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_autoresize:Z

    .line 136
    const-string v2, "web_dis_clearcache"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_clearcache:Z

    .line 137
    const-string v2, "web_dis_javascript"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_javascript:Z

    .line 138
    const-string v2, "web_dis_javascript_cowa"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->web_dis_javascript_cowa:Z

    .line 140
    const-string v2, "ga_label"

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->ga_label:Ljava/lang/String;

    .line 143
    :try_start_15b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    .line 145
    const-string v2, "subcampaigndetails"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 146
    .local v1, "jsonSubitems":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_169
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_170

    .line 152
    .end local v0    # "i":I
    .end local v1    # "jsonSubitems":Lorg/json/JSONArray;
    :goto_16f
    return-void

    .line 147
    .restart local v0    # "i":I
    .restart local v1    # "jsonSubitems":Lorg/json/JSONArray;
    :cond_170
    iget-object v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/privilege/bean/DashboardItem;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/privilege/bean/DashboardItem;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_17e} :catch_181

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_169

    .line 149
    .end local v0    # "i":I
    .end local v1    # "jsonSubitems":Lorg/json/JSONArray;
    :catch_181
    move-exception v2

    goto :goto_16f
.end method


# virtual methods
.method public GetPointString(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 93
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "formatterHasDigi":Ljava/text/NumberFormat;
    iget v1, p0, Lcom/samsung/privilege/bean/DashboardItem;->campaignpoint:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_32

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->campaignpoint:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a011a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    :goto_31
    return-object v1

    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->campaignpoint:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a011b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_31
.end method

.method public GetTypeString(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/samsung/privilege/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 79
    const v1, 0x7f0a026a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 88
    :goto_15
    return-object v1

    .line 80
    :cond_16
    iget-object v1, p0, Lcom/samsung/privilege/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 81
    const v1, 0x7f0a0269

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    .line 82
    :cond_2c
    iget-object v1, p0, Lcom/samsung/privilege/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    iget-object v1, p0, Lcom/samsung/privilege/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 83
    :cond_40
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "formatterHasDigi":Ljava/text/NumberFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/privilege/bean/DashboardItem;->campaigndiscount:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    .line 85
    .end local v0    # "formatterHasDigi":Ljava/text/NumberFormat;
    :cond_62
    iget-object v1, p0, Lcom/samsung/privilege/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    const-string v2, "7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 86
    const v1, 0x7f0a026c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    .line 88
    :cond_78
    const-string v1, ""

    goto :goto_15
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public image_url_large()Ljava/lang/String;
    .registers 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 71
    iget-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->image_url:Ljava/lang/String;

    const-string v1, "?"

    const-string v2, "-large?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_18
    return-object v0

    :cond_19
    iget-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->image_url:Ljava/lang/String;

    goto :goto_18
.end method

.method public image_url_small()Ljava/lang/String;
    .registers 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 63
    iget-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->image_url:Ljava/lang/String;

    const-string v1, "?"

    const-string v2, "-small?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_18
    return-object v0

    :cond_19
    iget-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->image_url:Ljava/lang/String;

    goto :goto_18
.end method

.method public image_url_thumb()Ljava/lang/String;
    .registers 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 55
    iget-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->image_url:Ljava/lang/String;

    const-string v1, "?"

    const-string v2, "-thumbnail?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_18
    return-object v0

    :cond_19
    iget-object v0, p0, Lcom/samsung/privilege/bean/DashboardItem;->image_url:Ljava/lang/String;

    goto :goto_18
.end method
