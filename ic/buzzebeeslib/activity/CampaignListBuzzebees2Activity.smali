.class public Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;
.super Landroid/support/v4/app/FragmentActivity;
.source "CampaignListBuzzebees2Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private gHandler:Landroid/os/Handler;

.field private mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private paramCatId:Ljava/lang/String;

.field private paramCatName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 30
    const-class v0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initialParam()V
    .registers 3

    .prologue
    .line 97
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cat_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->paramCatId:Ljava/lang/String;

    .line 99
    const-string v1, "cat_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->paramCatName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method private loadCampaignCategory(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaigncat/full_menu_ads?device_locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(loadCampaignCategory)url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v1, 0x0

    new-instance v2, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener;

    invoke-direct {v2, p0, p1}, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener;-><init>(Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;Landroid/os/Bundle;)V

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 107
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$1;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$1;-><init>(Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    if-eqz p1, :cond_4e

    .line 45
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->TAG:Ljava/lang/String;

    const-string v2, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_c
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->requestWindowFeature(I)Z

    .line 50
    invoke-static {p0}, Lic/buzzebeeslib/util/ThemesUtil;->onActivityCreateSetTheme(Landroid/app/Activity;)V

    .line 51
    sget v1, Lic/buzzebeeslib/R$layout;->bz_market_place_detail2:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->setContentView(I)V

    .line 53
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->gHandler:Landroid/os/Handler;

    .line 55
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->initialParam()V

    .line 59
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 61
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    const-string v2, "UA-42649771-1"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 63
    const-string v1, "category_platinum"

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "catch_category_platinum":Ljava/lang/String;
    if-eqz v0, :cond_4a

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 67
    :cond_4a
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->loadCampaignCategory(Landroid/os/Bundle;)V

    .line 69
    :cond_4d
    return-void

    .line 47
    .end local v0    # "catch_category_platinum":Ljava/lang/String;
    :cond_4e
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->TAG:Ljava/lang/String;

    const-string v2, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 85
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 86
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget v0, Lic/buzzebeeslib/R$id;->content_frame:I

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/app/Activity;I)V

    .line 89
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 79
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 80
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 73
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 74
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 94
    return-void
.end method
