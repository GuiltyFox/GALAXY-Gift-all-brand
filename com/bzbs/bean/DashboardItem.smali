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

.field public point_caption_color:Ljava/lang/String;

.field public point_caption_en:Ljava/lang/String;

.field public point_caption_shadow:Ljava/lang/String;

.field public point_caption_th:Ljava/lang/String;

.field public redeem_media:Ljava/lang/String;

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

.field public wallet_card_image_url:Ljava/lang/String;

.field public wallet_card_layout_html:Ljava/lang/String;

.field public wallet_cardid_color:Ljava/lang/String;

.field public wallet_cardid_shadow:Ljava/lang/String;

.field public wallet_cardtype:Ljava/lang/String;

.field public wallet_dashboard_header:Ljava/lang/String;

.field public wallet_dashboard_key_activated:Ljava/lang/String;

.field public wallet_dashboard_key_inactivate:Ljava/lang/String;

.field public wallet_disable_amount:Z

.field public wallet_disable_payment:Z

.field public wallet_hide_tabbar:Z

.field public wallet_image_active:Ljava/lang/String;

.field public wallet_image_inactive:Ljava/lang/String;

.field public wallet_issuer:Ljava/lang/String;

.field public wallet_otp_call_create:Z

.field public wallet_promotion:Ljava/lang/String;

.field public wallet_queue:Ljava/lang/String;

.field public wallet_timeout:I

.field public wallet_url:Ljava/lang/String;

.field public wallet_verify_authen:Z

.field public wallet_verify_imei:Z

.field public wallet_verify_success_buy_campaign:Ljava/lang/String;

.field public wallet_verify_success_redeem_campaign:Ljava/lang/String;

.field public wallet_verify_success_redeem_media:Ljava/lang/String;

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

    .line 189
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

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->redeem_media:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_cardtype:Ljava/lang/String;

    .line 67
    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_verify_imei:Z

    .line 68
    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_verify_authen:Z

    .line 69
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_verify_success_redeem_campaign:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_verify_success_redeem_media:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_verify_success_buy_campaign:Ljava/lang/String;

    .line 72
    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_otp_call_create:Z

    .line 73
    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_disable_payment:Z

    .line 74
    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_disable_amount:Z

    .line 75
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_url:Ljava/lang/String;

    .line 76
    iput v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_timeout:I

    .line 77
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_card_image_url:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_card_layout_html:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_image_active:Ljava/lang/String;

    .line 80
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_image_inactive:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_promotion:Ljava/lang/String;

    .line 82
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_queue:Ljava/lang/String;

    .line 83
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_header:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_key_inactivate:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_key_activated:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_hide_tabbar:Z

    .line 87
    const-string/jumbo v0, "#000000"

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_cardid_color:Ljava/lang/String;

    .line 88
    const-string/jumbo v0, "#ffffff"

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_cardid_shadow:Ljava/lang/String;

    .line 92
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->point_caption_en:Ljava/lang/String;

    .line 93
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->point_caption_th:Ljava/lang/String;

    .line 94
    const-string/jumbo v0, "#000000"

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->point_caption_color:Ljava/lang/String;

    .line 95
    const-string/jumbo v0, "#ffffff"

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->point_caption_shadow:Ljava/lang/String;

    .line 97
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->cat_header_en:Ljava/lang/String;

    .line 98
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->cat_header_th:Ljava/lang/String;

    .line 99
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->cat_header_image:Ljava/lang/String;

    .line 101
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->sub_dashboard_key:Ljava/lang/String;

    .line 103
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->hashtag_list_config:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->hashtag_list_agency:Ljava/lang/String;

    .line 106
    iput v1, p0, Lcom/bzbs/bean/DashboardItem;->campaign_rotate_padding:I

    .line 107
    const-string/jumbo v0, "#00ffffff"

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->campaign_rotate_background:Ljava/lang/String;

    .line 109
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    .line 110
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->ga_campaign_name:Ljava/lang/String;

    .line 111
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->ga_category_name:Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    .line 191
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 193
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

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->redeem_media:Ljava/lang/String;

    .line 65
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    .line 66
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_cardtype:Ljava/lang/String;

    .line 67
    iput-boolean v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_verify_imei:Z

    .line 68
    iput-boolean v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_verify_authen:Z

    .line 69
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_verify_success_redeem_campaign:Ljava/lang/String;

    .line 70
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_verify_success_redeem_media:Ljava/lang/String;

    .line 71
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_verify_success_buy_campaign:Ljava/lang/String;

    .line 72
    iput-boolean v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_otp_call_create:Z

    .line 73
    iput-boolean v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_disable_payment:Z

    .line 74
    iput-boolean v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_disable_amount:Z

    .line 75
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_url:Ljava/lang/String;

    .line 76
    iput v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_timeout:I

    .line 77
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_card_image_url:Ljava/lang/String;

    .line 78
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_card_layout_html:Ljava/lang/String;

    .line 79
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_image_active:Ljava/lang/String;

    .line 80
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_image_inactive:Ljava/lang/String;

    .line 81
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_promotion:Ljava/lang/String;

    .line 82
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_queue:Ljava/lang/String;

    .line 83
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_header:Ljava/lang/String;

    .line 84
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_key_inactivate:Ljava/lang/String;

    .line 85
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_key_activated:Ljava/lang/String;

    .line 86
    iput-boolean v0, p0, Lcom/bzbs/bean/DashboardItem;->wallet_hide_tabbar:Z

    .line 87
    const-string/jumbo v1, "#000000"

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_cardid_color:Ljava/lang/String;

    .line 88
    const-string/jumbo v1, "#ffffff"

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_cardid_shadow:Ljava/lang/String;

    .line 92
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->point_caption_en:Ljava/lang/String;

    .line 93
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->point_caption_th:Ljava/lang/String;

    .line 94
    const-string/jumbo v1, "#000000"

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->point_caption_color:Ljava/lang/String;

    .line 95
    const-string/jumbo v1, "#ffffff"

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->point_caption_shadow:Ljava/lang/String;

    .line 97
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->cat_header_en:Ljava/lang/String;

    .line 98
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->cat_header_th:Ljava/lang/String;

    .line 99
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->cat_header_image:Ljava/lang/String;

    .line 101
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->sub_dashboard_key:Ljava/lang/String;

    .line 103
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->hashtag_list_config:Ljava/lang/String;

    .line 104
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->hashtag_list_agency:Ljava/lang/String;

    .line 106
    iput v0, p0, Lcom/bzbs/bean/DashboardItem;->campaign_rotate_padding:I

    .line 107
    const-string/jumbo v1, "#00ffffff"

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->campaign_rotate_background:Ljava/lang/String;

    .line 109
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    .line 110
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->ga_campaign_name:Ljava/lang/String;

    .line 111
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->ga_category_name:Ljava/lang/String;

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    .line 194
    const-string/jumbo v1, "background"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->background:Ljava/lang/String;

    .line 195
    const-string/jumbo v1, "image_url"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    .line 196
    const-string/jumbo v1, "image_width"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/bean/DashboardItem;->image_width:I

    .line 197
    const-string/jumbo v1, "image_height"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/bean/DashboardItem;->image_height:I

    .line 198
    const-string/jumbo v1, "type"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    .line 199
    const-string/jumbo v1, "line1"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    .line 200
    const-string/jumbo v1, "line1_color"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->line1_color:Ljava/lang/String;

    .line 201
    const-string/jumbo v1, "line2"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    .line 202
    const-string/jumbo v1, "line2_color"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->line2_color:Ljava/lang/String;

    .line 203
    const-string/jumbo v1, "campaigntype"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    .line 204
    const-string/jumbo v1, "campaignpoint"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    .line 205
    const-string/jumbo v1, "campaignbarcode"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->campaignbarcode:Ljava/lang/String;

    .line 206
    const-string/jumbo v1, "campaigndiscount"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/bean/DashboardItem;->campaigndiscount:I

    .line 207
    const-string/jumbo v1, "id"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/bean/DashboardItem;->id:I

    .line 208
    const-string/jumbo v1, "cat"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->cat:Ljava/lang/String;

    .line 209
    const-string/jumbo v1, "url"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->url:Ljava/lang/String;

    .line 210
    const-string/jumbo v1, "menu"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    .line 211
    const-string/jumbo v1, "size"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->size:Ljava/lang/String;

    .line 213
    const-string/jumbo v1, "and_ns"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->and_ns:Ljava/lang/String;

    .line 214
    const-string/jumbo v1, "and_ns_params"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->and_ns_params:Ljava/lang/String;

    .line 215
    const-string/jumbo v1, "agency_id"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->agency_id:Ljava/lang/String;

    .line 217
    const-string/jumbo v1, "need_login"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->need_login:Z

    .line 218
    const-string/jumbo v1, "need_logout"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->need_logout:Z

    .line 220
    const-string/jumbo v1, "dashboard_layout"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    .line 221
    const-string/jumbo v1, "campaigndetail_layout"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->campaigndetail_layout:Ljava/lang/String;

    .line 222
    const-string/jumbo v1, "autoredeem"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->autoredeem:Z

    .line 223
    const-string/jumbo v1, "autoredeem_showcode"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->autoredeem_showcode:Z

    .line 224
    const-string/jumbo v1, "autoredeem_hideserial"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->autoredeem_hideserial:Z

    .line 225
    const-string/jumbo v1, "autoredeem_url"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    .line 227
    const-string/jumbo v1, "web_dis_autoresize"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->web_dis_autoresize:Z

    .line 228
    const-string/jumbo v1, "web_dis_clearcache"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->web_dis_clearcache:Z

    .line 229
    const-string/jumbo v1, "web_dis_javascript"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->web_dis_javascript:Z

    .line 230
    const-string/jumbo v1, "web_dis_javascript_cowa"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->web_dis_javascript_cowa:Z

    .line 232
    const-string/jumbo v1, "redeem_media"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->redeem_media:Ljava/lang/String;

    .line 234
    const-string/jumbo v1, "wallet_issuer"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    .line 235
    const-string/jumbo v1, "wallet_cardtype"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_cardtype:Ljava/lang/String;

    .line 236
    const-string/jumbo v1, "wallet_verify_imei"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_verify_imei:Z

    .line 237
    const-string/jumbo v1, "wallet_verify_authen"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_verify_authen:Z

    .line 238
    const-string/jumbo v1, "wallet_verify_success_redeem_campaign"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_verify_success_redeem_campaign:Ljava/lang/String;

    .line 239
    const-string/jumbo v1, "wallet_verify_success_redeem_media"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_verify_success_redeem_media:Ljava/lang/String;

    .line 240
    const-string/jumbo v1, "wallet_verify_success_buy_campaign"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_verify_success_buy_campaign:Ljava/lang/String;

    .line 241
    const-string/jumbo v1, "wallet_otp_call_create"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_otp_call_create:Z

    .line 242
    const-string/jumbo v1, "wallet_disable_payment"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_disable_payment:Z

    .line 243
    const-string/jumbo v1, "wallet_disable_amount"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_disable_amount:Z

    .line 244
    const-string/jumbo v1, "wallet_url"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_url:Ljava/lang/String;

    .line 245
    const-string/jumbo v1, "wallet_timeout"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_timeout:I

    .line 246
    const-string/jumbo v1, "wallet_card_image_url"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_card_image_url:Ljava/lang/String;

    .line 247
    const-string/jumbo v1, "wallet_card_layout_html"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_card_layout_html:Ljava/lang/String;

    .line 248
    const-string/jumbo v1, "wallet_image_active"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_image_active:Ljava/lang/String;

    .line 249
    const-string/jumbo v1, "wallet_image_inactive"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_image_inactive:Ljava/lang/String;

    .line 250
    const-string/jumbo v1, "wallet_promotion"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_promotion:Ljava/lang/String;

    .line 251
    const-string/jumbo v1, "wallet_queue"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_queue:Ljava/lang/String;

    .line 252
    const-string/jumbo v1, "wallet_dashboard_header"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_header:Ljava/lang/String;

    .line 253
    const-string/jumbo v1, "wallet_dashboard_key_inactivate"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_key_inactivate:Ljava/lang/String;

    .line 254
    const-string/jumbo v1, "wallet_dashboard_key_activated"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_key_activated:Ljava/lang/String;

    .line 255
    const-string/jumbo v1, "wallet_hide_tabbar"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_hide_tabbar:Z

    .line 256
    const-string/jumbo v1, "wallet_cardid_color"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_cardid_color:Ljava/lang/String;

    .line 257
    const-string/jumbo v1, "wallet_cardid_shadow"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->wallet_cardid_shadow:Ljava/lang/String;

    .line 259
    const-string/jumbo v1, "point_caption_en"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->point_caption_en:Ljava/lang/String;

    .line 260
    const-string/jumbo v1, "point_caption_th"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->point_caption_th:Ljava/lang/String;

    .line 261
    const-string/jumbo v1, "point_caption_color"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->point_caption_color:Ljava/lang/String;

    .line 262
    const-string/jumbo v1, "point_caption_shadow"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->point_caption_shadow:Ljava/lang/String;

    .line 264
    const-string/jumbo v1, "cat_header_en"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->cat_header_en:Ljava/lang/String;

    .line 265
    const-string/jumbo v1, "cat_header_th"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->cat_header_th:Ljava/lang/String;

    .line 266
    const-string/jumbo v1, "cat_header_image"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->cat_header_image:Ljava/lang/String;

    .line 268
    const-string/jumbo v1, "sub_dashboard_key"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->sub_dashboard_key:Ljava/lang/String;

    .line 270
    const-string/jumbo v1, "hashtag_list_config"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->hashtag_list_config:Ljava/lang/String;

    .line 271
    const-string/jumbo v1, "hashtag_list_agency"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->hashtag_list_agency:Ljava/lang/String;

    .line 273
    const-string/jumbo v1, "campaign_rotate_padding"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/bean/DashboardItem;->campaign_rotate_padding:I

    .line 274
    const-string/jumbo v1, "campaign_rotate_background"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->campaign_rotate_background:Ljava/lang/String;

    .line 276
    const-string/jumbo v1, "ga_label"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    .line 277
    const-string/jumbo v1, "ga_campaign_name"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->ga_campaign_name:Ljava/lang/String;

    .line 278
    const-string/jumbo v1, "ga_category_name"

    invoke-static {p1, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->ga_category_name:Ljava/lang/String;

    .line 281
    :try_start_411
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bzbs/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    .line 283
    const-string/jumbo v1, "subcampaigndetails"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 284
    :goto_41f
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_437

    .line 285
    iget-object v2, p0, Lcom/bzbs/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    new-instance v3, Lcom/bzbs/bean/DashboardItem;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bzbs/bean/DashboardItem;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_433
    .catch Ljava/lang/Exception; {:try_start_411 .. :try_end_433} :catch_436

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_41f

    .line 287
    :catch_436
    move-exception v0

    .line 290
    :cond_437
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

    .line 293
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 295
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 297
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_65

    .line 299
    :try_start_11
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 300
    new-instance v4, Lcom/bzbs/bean/DashboardItem;

    invoke-direct {v4, v1}, Lcom/bzbs/bean/DashboardItem;-><init>(Lorg/json/JSONObject;)V

    .line 301
    iget-boolean v1, v4, Lcom/bzbs/bean/DashboardItem;->need_login:Z

    if-ne v1, v7, :cond_2f

    .line 302
    if-eqz v3, :cond_2c

    const-string/jumbo v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 303
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_2c
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 305
    :cond_2f
    iget-boolean v1, v4, Lcom/bzbs/bean/DashboardItem;->need_logout:Z

    if-ne v1, v7, :cond_61

    .line 306
    if-eqz v3, :cond_3e

    const-string/jumbo v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 309
    :cond_3e
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_41} :catch_42

    goto :goto_2c

    .line 314
    :catch_42
    move-exception v1

    .line 315
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

    .line 312
    :cond_61
    :try_start_61
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_42

    goto :goto_2c

    .line 319
    :cond_65
    return-object v2
.end method


# virtual methods
.method public GetCampaignNameForGA()Ljava/lang/String;
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->ga_campaign_name:Ljava/lang/String;

    .line 115
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 116
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    .line 118
    :cond_d
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 119
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    .line 121
    :cond_18
    return-object v0
.end method

.method public GetCategoryNameForGA()Ljava/lang/String;
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->ga_category_name:Ljava/lang/String;

    .line 126
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 127
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    .line 129
    :cond_d
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 130
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    .line 132
    :cond_18
    return-object v0
.end method

.method public GetPointString(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 177
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "###,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 178
    iget v1, p0, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_34

    .line 179
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

    .line 181
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

    const v1, 0x7f0901c6

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
    .line 162
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 163
    const v0, 0x7f0900b5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_16
    return-object v0

    .line 164
    :cond_17
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 165
    const v0, 0x7f0900b7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 166
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

    .line 167
    :cond_44
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "###,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 168
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

    .line 169
    :cond_68
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    const-string/jumbo v1, "7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 170
    const v0, 0x7f09045d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 172
    :cond_7f
    const-string/jumbo v0, ""

    goto :goto_16
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 186
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public image_url_large()Ljava/lang/String;
    .registers 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 155
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    const-string/jumbo v1, "?"

    const-string/jumbo v2, "-large?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_1b
    return-object v0

    :cond_1c
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    goto :goto_1b
.end method

.method public image_url_small()Ljava/lang/String;
    .registers 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 147
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    const-string/jumbo v1, "?"

    const-string/jumbo v2, "-small?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_1b
    return-object v0

    :cond_1c
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    goto :goto_1b
.end method

.method public image_url_thumb()Ljava/lang/String;
    .registers 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 139
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    const-string/jumbo v1, "?"

    const-string/jumbo v2, "-thumbnail?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 141
    :goto_1b
    return-object v0

    :cond_1c
    iget-object v0, p0, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    goto :goto_1b
.end method
