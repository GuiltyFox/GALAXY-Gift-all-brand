.class public Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;
.super Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
.source "MarketPlacePagerActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private M:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

.field private N:I

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

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
        value = 0x7f100186
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

    iput v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->N:I

    .line 60
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->O:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->M:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

    return-object v0
.end method

.method private b(Lcom/bzbs/marketplace/model/dashboard/DashboardModel;)V
    .registers 7

    .prologue
    .line 418
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const-class v2, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 419
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 420
    new-instance v0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct {v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;-><init>()V

    .line 421
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setID(Ljava/lang/String;)V

    .line 422
    const-string/jumbo v3, "ItemMarketPlace"

    const-class v4, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-static {v4, v0}, Lorg/parceler/Parcels;->a(Ljava/lang/Class;Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 423
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

    .line 424
    :goto_3e
    const-string/jumbo v3, "ItemMarketPlace::Ads::Ins"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 425
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 426
    invoke-direct {p0, v1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->c(Landroid/content/Intent;)V

    .line 427
    return-void

    .line 423
    :cond_4b
    const/4 v0, 0x0

    goto :goto_3e
.end method

.method private c(Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 430
    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 431
    return-void
.end method

.method static synthetic c(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->p()V

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

    .line 155
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 235
    :cond_5
    :goto_5
    return-void

    .line 159
    :cond_6
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 164
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->O:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    move v1, v2

    move v3, v2

    .line 165
    :goto_1b
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_52

    .line 166
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

    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->O:Ljava/lang/String;

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

    .line 165
    :cond_4d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b

    :cond_51
    move v3, v2

    .line 172
    :cond_52
    new-instance v0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-direct {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;-><init>()V

    .line 173
    const-string/jumbo v1, "Dashboard"

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->setName(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 177
    new-instance v0, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    iget-object v5, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v4, v5}, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->M:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

    .line 178
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->M:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/PagerAdapter;)V

    .line 179
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 181
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->q:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    new-instance v1, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;-><init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;)V

    .line 220
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->q:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Landroid/support/v4/view/ViewPager;)V

    .line 221
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->q:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-virtual {v0, p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 222
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->q:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    sget v1, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->A:I

    div-int/lit8 v1, v1, 0x3

    sget v4, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->A:I

    div-int/lit8 v4, v4, 0x3

    invoke-virtual {v0, v1, v2, v4, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setPadding(IIII)V

    .line 224
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->O:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    .line 225
    add-int/lit8 v3, v3, 0x1

    .line 228
    :cond_b3
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->y:Landroid/os/Handler;

    new-instance v1, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$4;

    invoke-direct {v1, p0, v3}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$4;-><init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5
.end method

.method private p()V
    .registers 4

    .prologue
    .line 291
    const-string/jumbo v0, "menu_bzbs"

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlMarketPlaceMenu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->z:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 294
    new-instance v1, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    iget-object v2, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-direct {v1, v2, v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const-class v0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->c(Ljava/lang/String;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->a:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    .line 295
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->a:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    new-instance v1, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;-><init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->a(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;)V

    .line 327
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
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->o()V

    .line 75
    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b(I)V

    .line 77
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "catId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->O:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->O:Ljava/lang/String;

    if-nez v0, :cond_27

    .line 79
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->O:Ljava/lang/String;

    .line 82
    :cond_27
    const-string/jumbo v0, "BZB Marketplace"

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_noti"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 85
    if-ne v0, v3, :cond_7b

    .line 86
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "campaign_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 87
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "from_noti_alert"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
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

    .line 90
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_noti_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    :cond_7b
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$1;-><init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;Landroid/os/Bundle;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    return-void
.end method

.method public a(Lcom/bzbs/marketplace/model/dashboard/DashboardModel;)V
    .registers 9

    .prologue
    const/4 v2, 0x1

    .line 341
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

    .line 342
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

    .line 347
    :goto_99
    if-nez p1, :cond_b3

    .line 414
    :cond_9b
    :goto_9b
    return-void

    .line 342
    :cond_9c
    const-string/jumbo v0, "Campaign"

    goto :goto_61

    :cond_a0
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_7f

    .line 344
    :cond_a5
    const-string/jumbo v0, "BZB Marketplace"

    const-string/jumbo v1, "Click Dashboard Banner"

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getGa_label()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_99

    .line 351
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

    .line 353
    :cond_e6
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b(Lcom/bzbs/marketplace/model/dashboard/DashboardModel;)V

    goto :goto_9b

    .line 354
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

    .line 356
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

    .line 357
    :goto_124
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9b

    .line 358
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

    .line 359
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 357
    :cond_15c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_124

    .line 363
    :cond_160
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 365
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "link"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    .line 367
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 368
    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9b

    .line 370
    :cond_197
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "openapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20d

    .line 372
    :try_start_1a8
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getAnd_ns()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 373
    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_1b7} :catch_1b9

    goto/16 :goto_9b

    .line 374
    :catch_1b9
    move-exception v0

    .line 376
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

    .line 377
    :catch_1e3
    move-exception v0

    .line 378
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

    .line 381
    :cond_20d
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b4

    .line 383
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getMenu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "newsfeeds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 385
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getMenu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "activities"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 387
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getMenu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "friends"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 389
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getMenu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_fanpage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 391
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getMenu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "badges"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 393
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getMenu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "marketplace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 395
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getMenu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "checkins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 398
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f090223

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getMenu()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static/range {v0 .. v6}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->a(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 401
    :cond_2b4
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "highlight_campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 403
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "highlight_cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 405
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "highlight_event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 407
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hashtag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 409
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign_all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 412
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
    const v0, 0x7f040038

    return v0
.end method

.method protected g()V
    .registers 1

    .prologue
    .line 111
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_c

    .line 334
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onBackPressed()V

    .line 338
    :goto_b
    return-void

    .line 336
    :cond_c
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_b
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 148
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onDestroy()V

    .line 149
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->a:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    if-eqz v0, :cond_c

    .line 150
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->a:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->a()V

    .line 152
    :cond_c
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    .prologue
    .line 287
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 8

    .prologue
    .line 240
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getName_en()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->P:Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a6

    .line 243
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->P:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BZB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Category"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 246
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

    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->P:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
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

    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->P:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_a6
    return-void
.end method

.method public onPageSelected(I)V
    .registers 6

    .prologue
    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getName_en()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->P:Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->P:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BZB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Category"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 258
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

    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->P:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
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

    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->P:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->N:I

    if-lez v0, :cond_f9

    .line 263
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->q:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->N:I

    invoke-virtual {v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100553

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "campaigncat/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    iget v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->N:I

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

    .line 265
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

    .line 268
    :cond_f9
    if-lez p1, :cond_16b

    .line 269
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->M:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1, p1}, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    .line 270
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->P:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->q:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100553

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->X:Ljava/lang/String;

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

    .line 274
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

    .line 276
    iput p1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->N:I
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16b} :catch_16c

    .line 281
    :cond_16b
    :goto_16b
    return-void

    .line 278
    :catch_16c
    move-exception v0

    goto :goto_16b
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 115
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onResume()V

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->c(Z)V

    .line 118
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 119
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_22

    .line 120
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const v1, 0x7f0900d1

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    :cond_22
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->y:Landroid/os/Handler;

    new-instance v1, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$2;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$2;-><init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    return-void
.end method
