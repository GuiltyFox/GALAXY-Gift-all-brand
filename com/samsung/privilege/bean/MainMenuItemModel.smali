.class public Lcom/samsung/privilege/bean/MainMenuItemModel;
.super Ljava/lang/Object;
.source "MainMenuItemModel.java"


# instance fields
.field public header:Ljava/lang/String;

.field public history_agencyid:Ljava/lang/String;

.field public history_agencyname:Ljava/lang/String;

.field public history_barcode:Ljava/lang/String;

.field public history_campaign_id:Ljava/lang/String;

.field public history_cat_id:Ljava/lang/String;

.field public history_detail:Ljava/lang/String;

.field public history_id:Ljava/lang/String;

.field public history_location_agency_id:I

.field public history_minutes_valid_after_used:I

.field public history_play_animation:Z

.field public history_privilege_message:Ljava/lang/String;

.field public history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

.field public history_redeem_date:J

.field public history_serial:Ljava/lang/String;

.field public history_type:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public newCount:I

.field public noti_agency_id:Ljava/lang/String;

.field public noti_cat_id:Ljava/lang/String;

.field public noti_cp_cat_id:Ljava/lang/String;

.field public noti_detail:Ljava/lang/String;

.field public noti_id:Ljava/lang/String;

.field public noti_play_animation:Z

.field public noti_url:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public title2:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->header:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->title:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->title2:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_id:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_cat_id:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_cp_cat_id:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_detail:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_agency_id:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_url:Ljava/lang/String;

    .line 20
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_play_animation:Z

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_id:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_campaign_id:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_cat_id:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_type:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_detail:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_agencyid:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_agencyname:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_serial:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_barcode:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_privilege_message:Ljava/lang/String;

    .line 36
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_play_animation:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "title2"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/privilege/bean/MainMenuItemModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "title2"    # Ljava/lang/String;
    .param p4, "newCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->header:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->title:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->title2:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_id:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_cat_id:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_cp_cat_id:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_detail:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_agency_id:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_url:Ljava/lang/String;

    .line 20
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_play_animation:Z

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_id:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_campaign_id:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_cat_id:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_type:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_detail:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_agencyid:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_agencyname:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_serial:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_barcode:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_privilege_message:Ljava/lang/String;

    .line 36
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_play_animation:Z

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    .line 48
    iput-object p1, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->title:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->title2:Ljava/lang/String;

    .line 51
    iput p4, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->newCount:I

    .line 52
    return-void
.end method


# virtual methods
.method public setCount(I)V
    .registers 2
    .param p1, "newCount"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/samsung/privilege/bean/MainMenuItemModel;->newCount:I

    .line 56
    return-void
.end method
