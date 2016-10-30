.class public Lcom/bzbs/bean/DashboardItem;
.super Ljava/lang/Object;
.source "DashboardItem.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field public agency_id:Ljava/lang/String;

.field public and_ns:Ljava/lang/String;

.field public and_ns_params:Ljava/lang/String;

.field public autoredeem:Z

.field public autoredeem_hideserial:Z

.field public autoredeem_showcode:Z

.field public autoredeem_url:Ljava/lang/String;

.field public background:Ljava/lang/String;

.field public campaign_rotate_background:Ljava/lang/String;

.field public campaign_rotate_padding:I

.field public campaignbarcode:Ljava/lang/String;

.field public campaigndetail_layout:Ljava/lang/String;

.field public campaigndiscount:I

.field public campaignpoint:I

.field public campaignremaining:Ljava/lang/String;

.field public campaignstatus:Ljava/lang/String;

.field public campaigntype:Ljava/lang/String;

.field public cat:Ljava/lang/String;

.field public cat_header_en:Ljava/lang/String;

.field public cat_header_image:Ljava/lang/String;

.field public cat_header_th:Ljava/lang/String;

.field public dashboard_layout:Ljava/lang/String;

.field public ga_campaign_name:Ljava/lang/String;

.field public ga_category_name:Ljava/lang/String;

.field public ga_label:Ljava/lang/String;

.field public hashtag_list_agency:Ljava/lang/String;

.field public hashtag_list_config:Ljava/lang/String;

.field public historyWallet:Lcom/bzbs/bean/HistoryWallet;

.field public id:I

.field public image_height:I

.field public image_url:Ljava/lang/String;

.field public image_width:I

.field public line1:Ljava/lang/String;

.field public line1_color:Ljava/lang/String;

.field public line2:Ljava/lang/String;

.field public line2_color:Ljava/lang/String;

.field public menu:Ljava/lang/String;

.field public need_login:Z

.field public need_logout:Z

.field public size:Ljava/lang/String;

.field public sub_dashboard_items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/DashboardItem;",
            ">;"
        }
    .end annotation
.end field

.field public sub_dashboard_key:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public wallet_image_active:Ljava/lang/String;

.field public wallet_image_inactive:Ljava/lang/String;

.field public wallet_issuer:Ljava/lang/String;

.field public wallet_promotion:Ljava/lang/String;

.field public web_dis_autoresize:Z

.field public web_dis_clearcache:Z

.field public web_dis_javascript:Z

.field public web_dis_javascript_cowa:Z

.field public web_dis_scrollbar:Z

.field public web_dis_zoom:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/bzbs/bean/DashboardItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/bean/DashboardItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v0, "#ffffff"

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->background:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/bzbs/bean/DashboardItem;->image_width:I

    .line 25
    iput v1, p0, Lcom/bzbs/bean/DashboardItem;->image_height:I

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "#000000"

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->line1_color:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "#2ba9e3"

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->line2_color:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    .line 32
    iput v1, p0, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->campaignbarcode:Ljava/lang/String;

    .line 34
    iput v1, p0, Lcom/bzbs/bean/DashboardItem;->campaigndiscount:I

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->campaignremaining:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->campaignstatus:Ljava/lang/String;

    .line 37
    iput v1, p0, Lcom/bzbs/bean/DashboardItem;->id:I

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->cat:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->url:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->size:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->and_ns:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->and_ns_params:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->agency_id:Ljava/lang/String;

    .line 45
    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->need_login:Z

    .line 46
    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->need_logout:Z

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->campaigndetail_layout:Ljava/lang/String;

    .line 50
    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->autoredeem:Z

    .line 51
    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->autoredeem_showcode:Z

    .line 52
    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->autoredeem_hideserial:Z

    .line 53
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    .line 55
    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->web_dis_autoresize:Z

    .line 56
    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->web_dis_clearcache:Z

    .line 57
    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->web_dis_javascript:Z

    .line 58
    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->web_dis_javascript_cowa:Z

    .line 59
    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->web_dis_scrollbar:Z

    .line 60
    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->web_dis_zoom:Z

    .line 62
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_image_active:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_image_inactive:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_promotion:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->cat_header_en:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->cat_header_th:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->cat_header_image:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->sub_dashboard_key:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->hashtag_list_config:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->hashtag_list_agency:Ljava/lang/String;

    .line 77
    iput v1, p0, Lcom/bzbs/bean/DashboardItem;->campaign_rotate_padding:I

    .line 78
    const-string/jumbo v0, "#00ffffff"

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->campaign_rotate_background:Ljava/lang/String;

    .line 80
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->ga_campaign_name:Ljava/lang/String;

    .line 82
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->ga_category_name:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    .line 162
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v1, "#ffffff"

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->background:Ljava/lang/String;

    .line 23
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    .line 24
    iput v0, p0, Lcom/bzbs/bean/DashboardItem;->image_width:I

    .line 25
    iput v0, p0, Lcom/bzbs/bean/DashboardItem;->image_height:I

    .line 26
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    .line 27
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    .line 28
    const-string/jumbo v1, "#000000"

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->line1_color:Ljava/lang/String;

    .line 29
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    .line 30
    const-string/jumbo v1, "#2ba9e3"

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->line2_color:Ljava/lang/String;

    .line 31
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    .line 32
    iput v0, p0, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    .line 33
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->campaignbarcode:Ljava/lang/String;

    .line 34
    iput v0, p0, Lcom/bzbs/bean/DashboardItem;->campaigndiscount:I

    .line 35
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->campaignremaining:Ljava/lang/String;

    .line 36
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->campaignstatus:Ljava/lang/String;

    .line 37
    iput v0, p0, Lcom/bzbs/bean/DashboardItem;->id:I

    .line 38
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->cat:Ljava/lang/String;

    .line 39
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->url:Ljava/lang/String;

    .line 40
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    .line 41
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->size:Ljava/lang/String;

    .line 42
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->and_ns:Ljava/lang/String;

    .line 43
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->and_ns_params:Ljava/lang/String;

    .line 44
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->agency_id:Ljava/lang/String;

    .line 45
    iput-boolean v0, p0, Lcom/bzbs/bean/DashboardItem;->need_login:Z

    .line 46
    iput-boolean v0, p0, Lcom/bzbs/bean/DashboardItem;->need_logout:Z

    .line 48
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    .line 49
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->campaigndetail_layout:Ljava/lang/String;

    .line 50
    iput-boolean v0, p0, Lcom/bzbs/bean/DashboardItem;->autoredeem:Z

    .line 51
    iput-boolean v0, p0, Lcom/bzbs/bean/DashboardItem;->autoredeem_showcode:Z

    .line 52
    iput-boolean v0, p0, Lcom/bzbs/bean/DashboardItem;->autoredeem_hideserial:Z

    .line 53
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    .line 55
    iput-boolean v0, p0, Lcom/bzbs/bean/DashboardItem;->web_dis_autoresize:Z

    .line 56
    iput-boolean v0, p0, Lcom/bzbs/bean/DashboardItem;->web_dis_clearcache:Z

    .line 57
    iput-boolean v0, p0, Lcom/bzbs/bean/DashboardItem;->web_dis_javascript:Z

    .line 58
    iput-boolean v0, p0, Lcom/bzbs/bean/DashboardItem;->web_dis_javascript_cowa:Z

    .line 59
    iput-boolean v0, p0, Lcom/bzbs/bean/DashboardItem;->web_dis_scrollbar:Z

    .line 60
    iput-boolean v0, p0, Lcom/bzbs/bean/DashboardItem;->web_dis_zoom:Z

    .line 62
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    .line 63
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_image_active:Ljava/lang/String;

    .line 64
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_image_inactive:Ljava/lang/String;

    .line 65
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_promotion:Ljava/lang/String;

    .line 68
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->cat_header_en:Ljava/lang/String;

    .line 69
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->cat_header_th:Ljava/lang/String;

    .line 70
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->cat_header_image:Ljava/lang/String;

    .line 72
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->sub_dashboard_key:Ljava/lang/String;

    .line 74
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->hashtag_list_config:Ljava/lang/String;

    .line 75
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->hashtag_list_agency:Ljava/lang/String;

    .line 77
    iput v0, p0, Lcom/bzbs/bean/DashboardItem;->campaign_rotate_padding:I

    .line 78
    const-string/jumbo v1, "#00ffffff"

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->campaign_rotate_background:Ljava/lang/String;

    .line 80
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    .line 81
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->ga_campaign_name:Ljava/lang/String;

    .line 82
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->ga_category_name:Ljava/lang/String;

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    .line 165
    const-string/jumbo v1, "background"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->background:Ljava/lang/String;

    .line 166
    const-string/jumbo v1, "image_url"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    .line 167
    const-string/jumbo v1, "image_width"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/bean/DashboardItem;->image_width:I

    .line 168
    const-string/jumbo v1, "image_height"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/bean/DashboardItem;->image_height:I

    .line 169
    const-string/jumbo v1, "type"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    .line 170
    const-string/jumbo v1, "line1"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    .line 171
    const-string/jumbo v1, "line1_color"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->line1_color:Ljava/lang/String;

    .line 172
    const-string/jumbo v1, "line2"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    .line 173
    const-string/jumbo v1, "line2_color"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->line2_color:Ljava/lang/String;

    .line 174
    const-string/jumbo v1, "campaigntype"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    .line 175
    const-string/jumbo v1, "campaignpoint"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    .line 176
    const-string/jumbo v1, "campaignbarcode"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->campaignbarcode:Ljava/lang/String;

    .line 177
    const-string/jumbo v1, "campaigndiscount"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/bean/DashboardItem;->campaigndiscount:I

    .line 178
    const-string/jumbo v1, "id"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/bean/DashboardItem;->id:I

    .line 179
    const-string/jumbo v1, "cat"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->cat:Ljava/lang/String;

    .line 180
    const-string/jumbo v1, "url"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->url:Ljava/lang/String;

    .line 181
    const-string/jumbo v1, "menu"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    .line 182
    const-string/jumbo v1, "size"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->size:Ljava/lang/String;

    .line 184
    const-string/jumbo v1, "and_ns"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->and_ns:Ljava/lang/String;

    .line 185
    const-string/jumbo v1, "and_ns_params"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->and_ns_params:Ljava/lang/String;

    .line 186
    const-string/jumbo v1, "agency_id"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->agency_id:Ljava/lang/String;

    .line 188
    const-string/jumbo v1, "need_login"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->need_login:Z

    .line 189
    const-string/jumbo v1, "need_logout"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->need_logout:Z

    .line 191
    const-string/jumbo v1, "dashboard_layout"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    .line 192
    const-string/jumbo v1, "campaigndetail_layout"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->campaigndetail_layout:Ljava/lang/String;

    .line 193
    const-string/jumbo v1, "autoredeem"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->autoredeem:Z

    .line 194
    const-string/jumbo v1, "autoredeem_showcode"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->autoredeem_showcode:Z

    .line 195
    const-string/jumbo v1, "autoredeem_hideserial"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->autoredeem_hideserial:Z

    .line 196
    const-string/jumbo v1, "autoredeem_url"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    .line 198
    const-string/jumbo v1, "web_dis_autoresize"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->web_dis_autoresize:Z

    .line 199
    const-string/jumbo v1, "web_dis_clearcache"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->web_dis_clearcache:Z

    .line 200
    const-string/jumbo v1, "web_dis_javascript"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->web_dis_javascript:Z

    .line 201
    const-string/jumbo v1, "web_dis_javascript_cowa"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->web_dis_javascript_cowa:Z

    .line 203
    const-string/jumbo v1, "wallet_issuer"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    .line 204
    const-string/jumbo v1, "wallet_image_active"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_image_active:Ljava/lang/String;

    .line 205
    const-string/jumbo v1, "wallet_image_inactive"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_image_inactive:Ljava/lang/String;

    .line 206
    const-string/jumbo v1, "wallet_promotion"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_promotion:Ljava/lang/String;

    .line 208
    const-string/jumbo v1, "cat_header_en"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->cat_header_en:Ljava/lang/String;

    .line 209
    const-string/jumbo v1, "cat_header_th"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->cat_header_th:Ljava/lang/String;

    .line 210
    const-string/jumbo v1, "cat_header_image"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->cat_header_image:Ljava/lang/String;

    .line 212
    const-string/jumbo v1, "sub_dashboard_key"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->sub_dashboard_key:Ljava/lang/String;

    .line 214
    const-string/jumbo v1, "hashtag_list_config"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->hashtag_list_config:Ljava/lang/String;

    .line 215
    const-string/jumbo v1, "hashtag_list_agency"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->hashtag_list_agency:Ljava/lang/String;

    .line 217
    const-string/jumbo v1, "campaign_rotate_padding"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/bean/DashboardItem;->campaign_rotate_padding:I

    .line 218
    const-string/jumbo v1, "campaign_rotate_background"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->campaign_rotate_background:Ljava/lang/String;

    .line 220
    const-string/jumbo v1, "ga_label"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    .line 221
    const-string/jumbo v1, "ga_campaign_name"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->ga_campaign_name:Ljava/lang/String;

    .line 222
    const-string/jumbo v1, "ga_category_name"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->ga_category_name:Ljava/lang/String;

    .line 225
    :try_start_2b0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    .line 227
    const-string/jumbo v1, "subcampaigndetails"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 228
    :goto_2be
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2d6

    .line 229
    iget-object v2, p0, Lcom/bzbs/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    new-instance v3, Lcom/bzbs/bean/DashboardItem;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bzbs/bean/DashboardItem;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2d2
    .catch Ljava/lang/Exception; {:try_start_2b0 .. :try_end_2d2} :catch_2d5

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_2be

    .line 231
    :catch_2d5
    move-exception v0

    .line 234
    :cond_2d6
    return-void
.end method

.method public static GetArrayList(Lorg/json/JSONArray;Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/DashboardItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 237
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 239
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 241
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_65

    .line 243
    :try_start_11
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 244
    new-instance v4, Lcom/bzbs/bean/DashboardItem;

    invoke-direct {v4, v1}, Lcom/bzbs/bean/DashboardItem;-><init>(Lorg/json/JSONObject;)V

    .line 245
    iget-boolean v1, v4, Lcom/bzbs/bean/DashboardItem;->need_login:Z

    if-ne v1, v7, :cond_2f

    .line 246
    if-eqz v3, :cond_2c

    const-string/jumbo v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 247
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_2c
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 249
    :cond_2f
    iget-boolean v1, v4, Lcom/bzbs/bean/DashboardItem;->need_logout:Z

    if-ne v1, v7, :cond_61

    .line 250
    if-eqz v3, :cond_3e

    const-string/jumbo v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 253
    :cond_3e
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_41} :catch_42

    goto :goto_2c

    .line 258
    :catch_42
    move-exception v1

    .line 259
    sget-object v4, Lcom/bzbs/bean/DashboardItem;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error while initial(DashboardItem):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 256
    :cond_61
    :try_start_61
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_42

    goto :goto_2c

    .line 263
    :cond_65
    return-object v2
.end method


# virtual methods
.method public GetCampaignNameForGA()Ljava/lang/String;
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->ga_campaign_name:Ljava/lang/String;

    .line 86
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 87
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    .line 89
    :cond_d
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 90
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    .line 92
    :cond_18
    return-object v0
.end method

.method public GetCategoryNameForGA()Ljava/lang/String;
    .registers 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->ga_category_name:Ljava/lang/String;

    .line 97
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 98
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    .line 100
    :cond_d
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 101
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    .line 103
    :cond_18
    return-object v0
.end method

.method public GetPointString(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 148
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "###,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 149
    iget v1, p0, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_34

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0901c4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_33
    return-object v0

    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0901c5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33
.end method

.method public GetTypeString(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 133
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 134
    const v0, 0x7f0900b4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_16
    return-object v0

    .line 135
    :cond_17
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 136
    const v0, 0x7f0900b6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 137
    :cond_2e
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 138
    :cond_44
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "###,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/bzbs/bean/DashboardItem;->campaigndiscount:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 140
    :cond_68
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    const-string/jumbo v1, "7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 141
    const v0, 0x7f090410

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 143
    :cond_7f
    const-string/jumbo v0, ""

    goto :goto_16
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 157
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public image_url_large()Ljava/lang/String;
    .registers 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 126
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    const-string/jumbo v1, "?"

    const-string/jumbo v2, "-large?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_1b
    return-object v0

    :cond_1c
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    goto :goto_1b
.end method

.method public image_url_small()Ljava/lang/String;
    .registers 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 118
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    const-string/jumbo v1, "?"

    const-string/jumbo v2, "-small?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_1b
    return-object v0

    :cond_1c
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    goto :goto_1b
.end method

.method public image_url_thumb()Ljava/lang/String;
    .registers 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 110
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    const-string/jumbo v1, "?"

    const-string/jumbo v2, "-thumbnail?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_1b
    return-object v0

    :cond_1c
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    goto :goto_1b
.end method
