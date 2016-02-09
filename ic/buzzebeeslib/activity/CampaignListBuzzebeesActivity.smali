.class public Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;
.super Lic/buzzebeeslib/activity/BaseSlidingActivity;
.source "CampaignListBuzzebeesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity$GetCampaignCategoryListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private gHandler:Landroid/os/Handler;

.field public mContent:Landroid/support/v4/app/Fragment;

.field private mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private paramCatId:Ljava/lang/String;

.field private paramCatName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    sget v0, Lic/buzzebeeslib/R$string;->string_empty:I

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/BaseSlidingActivity;-><init>(I)V

    .line 27
    const-class v0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->TAG:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initialContent(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x2

    .line 157
    if-eqz p1, :cond_9e

    .line 158
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->TAG:Ljava/lang/String;

    const-string v4, "savedInstanceState != null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "mContent"

    invoke-virtual {v3, p1, v4}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    iput-object v3, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->mContent:Landroid/support/v4/app/Fragment;

    .line 164
    :goto_16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 165
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "cat_id"

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->paramCatId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v3, "cat_name"

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->paramCatName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->mContent:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_39

    .line 169
    new-instance v3, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-direct {v3}, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;-><init>()V

    iput-object v3, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->mContent:Landroid/support/v4/app/Fragment;

    .line 170
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->mContent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 174
    :cond_39
    sget v3, Lic/buzzebeeslib/R$layout;->bz_content_frame:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->setContentView(I)V

    .line 175
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 176
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    sget v3, Lic/buzzebeeslib/R$id;->content_frame:I

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->mContent:Landroid/support/v4/app/Fragment;

    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->mContent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 179
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 182
    sget v3, Lic/buzzebeeslib/R$layout;->bz_menu_slide_frame:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->setBehindContentView(I)V

    .line 183
    new-instance v1, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;

    invoke-direct {v1}, Lic/buzzebeeslib/fragment/CampaignCategoryFragment;-><init>()V

    .line 185
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 186
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    sget v4, Lic/buzzebeeslib/R$id;->menu_frame:I

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 187
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 189
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->mContent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lic/buzzebeeslib/fragment/MarketPlaceList2Fragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 190
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 194
    :goto_9d
    return-void

    .line 161
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_9e
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->TAG:Ljava/lang/String;

    const-string v4, "savedInstanceState == null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 192
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    .restart local v2    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_a7
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    goto :goto_9d
.end method

.method private initialParam()V
    .registers 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cat_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->paramCatId:Ljava/lang/String;

    .line 117
    const-string v1, "cat_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->paramCatName:Ljava/lang/String;

    .line 118
    return-void
.end method

.method private loadCampaignCategory(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaigncat/full_menu_ads?device_locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(loadCampaignCategory)url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v1, 0x0

    new-instance v2, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity$GetCampaignCategoryListener;

    invoke-direct {v2, p0, p1}, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity$GetCampaignCategoryListener;-><init>(Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;Landroid/os/Bundle;)V

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 125
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity$1;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity$1;-><init>(Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    const/4 v1, 0x0

    iput-boolean v1, p0, Lic/buzzebeeslib/activity/BaseSlidingActivity;->IsMenuOnTheRight:Z

    .line 46
    invoke-super {p0, p1}, Lic/buzzebeeslib/activity/BaseSlidingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->requestWindowFeature(I)Z

    .line 49
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->gHandler:Landroid/os/Handler;

    .line 51
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->initialParam()V

    .line 55
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 57
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    const-string v2, "UA-42649771-1"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 59
    const-string v1, "category_platinum"

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "catch_category_platinum":Ljava/lang/String;
    if-eqz v0, :cond_40

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 61
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->initialContent(Landroid/os/Bundle;)V

    .line 66
    :goto_3f
    return-void

    .line 63
    :cond_40
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->loadCampaignCategory(Landroid/os/Bundle;)V

    .line 64
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->initialContent(Landroid/os/Bundle;)V

    goto :goto_3f
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 98
    invoke-super {p0}, Lic/buzzebeeslib/activity/BaseSlidingActivity;->onDestroy()V

    .line 99
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget v0, Lic/buzzebeeslib/R$id;->content_frame:I

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/app/Activity;I)V

    .line 102
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 90
    invoke-super {p0}, Lic/buzzebeeslib/activity/BaseSlidingActivity;->onPause()V

    .line 91
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 70
    invoke-super {p0}, Lic/buzzebeeslib/activity/BaseSlidingActivity;->onResume()V

    .line 71
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lic/buzzebeeslib/activity/BaseSlidingActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    :try_start_3
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "mContent"

    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebeesActivity;->mContent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_f

    .line 112
    :goto_e
    return-void

    .line 109
    :catch_f
    move-exception v0

    goto :goto_e
.end method
