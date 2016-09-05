.class public Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;
.super Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
.source "MarketPlacePagerActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private L:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

.field private M:I

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field a:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;",
            ">;"
        }
    .end annotation
.end field

.field public vpMain:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10018d
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->M:I

    .line 60
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->N:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->L:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

    return-object v0
.end method

.method private b(Lcom/bzbs/marketplace/model/dashboard/DashboardModel;)V
    .registers 7

    .prologue
    .line 419
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const-class v2, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 420
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 421
    new-instance v0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct {v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;-><init>()V

    .line 422
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setID(Ljava/lang/String;)V

    .line 423
    const-string/jumbo v3, "ItemMarketPlace"

    const-class v4, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-static {v4, v0}, Lorg/parceler/Parcels;->a(Ljava/lang/Class;Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 424
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getLine2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getLine2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "ads"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const/4 v0, 0x1

    .line 425
    :goto_3e
    const-string/jumbo v3, "ItemMarketPlace::Ads::Ins"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 426
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 427
    invoke-direct {p0, v1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->c(Landroid/content/Intent;)V

    .line 428
    return-void

    .line 424
    :cond_4b
    const/4 v0, 0x0

    goto :goto_3e
.end method

.method private c(Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 432
    return-void
.end method

.method static synthetic c(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->o()V

    return-void
.end method

.method static synthetic d(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    return-object v0
.end method

.method static synthetic e(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    return-object v0
.end method

.method static synthetic f(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->h()V

    return-void
.end method

.method private h()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 236
    :cond_5
    :goto_5
    return-void

    .line 160
    :cond_6
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 165
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->N:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    move v1, v2

    move v3, v2

    .line 166
    :goto_1b
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_52

    .line 167
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "cat"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->N:Ljava/lang/String;

    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    move v3, v1

    .line 166
    :cond_4d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b

    :cond_51
    move v3, v2

    .line 173
    :cond_52
    new-instance v0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-direct {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;-><init>()V

    .line 174
    const-string/jumbo v1, "Dashboard"

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->setName(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 178
    new-instance v0, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    iget-object v5, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v4, v5}, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->L:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

    .line 179
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->L:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/PagerAdapter;)V

    .line 180
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 182
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->p:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    new-instance v1, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;-><init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;)V

    .line 221
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->p:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Landroid/support/v4/view/ViewPager;)V

    .line 222
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->p:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-virtual {v0, p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 223
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->p:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    sget v1, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->z:I

    div-int/lit8 v1, v1, 0x3

    sget v4, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->z:I

    div-int/lit8 v4, v4, 0x3

    invoke-virtual {v0, v1, v2, v4, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setPadding(IIII)V

    .line 225
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->N:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    .line 226
    add-int/lit8 v3, v3, 0x1

    .line 229
    :cond_b3
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->x:Landroid/os/Handler;

    new-instance v1, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$4;

    invoke-direct {v1, p0, v3}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$4;-><init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5
.end method

.method private o()V
    .registers 4

    .prologue
    .line 292
    const-string/jumbo v0, "menu_bzbs"

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlMarketPlaceMenu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->y:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 295
    new-instance v1, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    iget-object v2, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-direct {v1, v2, v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const-class v0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->c(Ljava/lang/String;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->a:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    .line 296
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->a:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    new-instance v1, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;-><init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->a(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;)V

    .line 328
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->j()V

    .line 72
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, v3}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->a(Ljava/lang/String;Z)V

    .line 73
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->n()V

    .line 75
    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b(I)V

    .line 77
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "catId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->N:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->N:Ljava/lang/String;

    if-nez v0, :cond_27

    .line 79
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->N:Ljava/lang/String;

    .line 83
    :cond_27
    const-string/jumbo v0, "BZB Marketplace"

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_noti"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 86
    if-ne v0, v3, :cond_7b

    .line 87
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "campaign_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 88
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "from_noti_alert"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    const-string/jumbo v2, "Push Notification"

    const-string/jumbo v3, "Click Bzbs Category"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_noti_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    :cond_7b
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$1;-><init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;Landroid/os/Bundle;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    return-void
.end method

.method public a(Lcom/bzbs/marketplace/model/dashboard/DashboardModel;)V
    .registers 9

    .prologue
    const/4 v2, 0x1

    .line 342
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_campaign_ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 343
    :cond_42
    const-string/jumbo v1, "BZB Marketplace"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Click Dashboard "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    const-string/jumbo v0, "Category"

    :goto_61
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getCat()Ljava/lang/String;

    move-result-object v0

    :goto_7f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getGa_label()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :goto_99
    if-nez p1, :cond_b3

    .line 415
    :cond_9b
    :goto_9b
    return-void

    .line 343
    :cond_9c
    const-string/jumbo v0, "Campaign"

    goto :goto_61

    :cond_a0
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_7f

    .line 345
    :cond_a5
    const-string/jumbo v0, "BZB Marketplace"

    const-string/jumbo v1, "Click Dashboard Banner"

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getGa_label()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_99

    .line 352
    :cond_b3
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e6

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e6

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_campaign_ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 354
    :cond_e6
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b(Lcom/bzbs/marketplace/model/dashboard/DashboardModel;)V

    goto :goto_9b

    .line 355
    :cond_ea
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10c

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_160

    .line 357
    :cond_10c
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getCat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9b

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getCat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    move v1, v2

    .line 358
    :goto_124
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9b

    .line 359
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "cat"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15c

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getCat()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 360
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 358
    :cond_15c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_124

    .line 364
    :cond_160
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 366
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "link"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    .line 368
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 369
    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9b

    .line 371
    :cond_197
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "openapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20d

    .line 373
    :try_start_1a8
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getAnd_ns()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 374
    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_1b7} :catch_1b9

    goto/16 :goto_9b

    .line 375
    :catch_1b9
    move-exception v0

    .line 377
    :try_start_1ba
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getAnd_ns()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1e1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1ba .. :try_end_1e1} :catch_1e3

    goto/16 :goto_9b

    .line 378
    :catch_1e3
    move-exception v0

    .line 379
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getAnd_ns()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9b

    .line 382
    :cond_20d
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b4

    .line 384
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getMenu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "newsfeeds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 386
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getMenu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "activities"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 388
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getMenu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "friends"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 390
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getMenu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_fanpage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 392
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getMenu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "badges"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 394
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getMenu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "marketplace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 396
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getMenu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "checkins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 399
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0903ba

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getMenu()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static/range {v0 .. v6}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->a(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 402
    :cond_2b4
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "highlight_campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 404
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "highlight_cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 406
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "highlight_event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 408
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hashtag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 410
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign_all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 413
    const-string/jumbo v0, "MarketPlace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid dashboard type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9b
.end method

.method public f()I
    .registers 2

    .prologue
    .line 66
    const v0, 0x7f04003a

    return v0
.end method

.method protected g()V
    .registers 1

    .prologue
    .line 112
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_c

    .line 335
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onBackPressed()V

    .line 339
    :goto_b
    return-void

    .line 337
    :cond_c
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_b
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 149
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onDestroy()V

    .line 150
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->a:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    if-eqz v0, :cond_c

    .line 151
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->a:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->a()V

    .line 153
    :cond_c
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    .prologue
    .line 288
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 8

    .prologue
    .line 241
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getName_en()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->O:Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a6

    .line 244
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->O:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BZB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Category"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 247
    :cond_48
    const-string/jumbo v1, "BZB Marketplace"

    const-string/jumbo v2, "View Scroll Bar Category"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string/jumbo v1, "BZB Marketplace"

    const-string/jumbo v2, "View BZB Category"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_a6
    return-void
.end method

.method public onPageSelected(I)V
    .registers 6

    .prologue
    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getName_en()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->O:Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->O:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BZB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Category"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 259
    :cond_40
    const-string/jumbo v1, "BZB Marketplace"

    const-string/jumbo v2, "Click Scroll Bar Category"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string/jumbo v1, "BZB Marketplace"

    const-string/jumbo v2, "Click BZB Category"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->M:I

    if-lez v0, :cond_f9

    .line 264
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->p:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->M:I

    invoke-virtual {v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1006bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->S:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "campaigncat/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    iget v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->M:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_gift_inactive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    iget-object v2, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->b()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 269
    :cond_f9
    if-lez p1, :cond_16b

    .line 270
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->L:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1, p1}, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    .line 271
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->p:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1006bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->S:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "campaigncat/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_gift_active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    iget-object v2, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->b()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 277
    iput p1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->M:I
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16b} :catch_16c

    .line 282
    :cond_16b
    :goto_16b
    return-void

    .line 279
    :catch_16c
    move-exception v0

    goto :goto_16b
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 116
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onResume()V

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->c(Z)V

    .line 119
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 120
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_22

    .line 121
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const v1, 0x7f090251

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    :cond_22
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->x:Landroid/os/Handler;

    new-instance v1, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$2;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$2;-><init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    return-void
.end method
