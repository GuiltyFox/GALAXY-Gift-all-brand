.class public Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;
.super Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
.source "MarketPlacePagerActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field MarketPlaceMenuAsynctask:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

.field private adapter:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

.field private catId:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private lastPosition:I

.field public listData:Ljava/util/ArrayList;
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
        value = 0x7f100174
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

    iput v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->lastPosition:I

    .line 60
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->catId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->adapter:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->loadData()V

    return-void
.end method

.method static synthetic access$300(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->initWidget()V

    return-void
.end method

.method private initWidget()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 156
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    if-nez v4, :cond_6

    .line 236
    :cond_5
    :goto_5
    return-void

    .line 160
    :cond_6
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_5

    .line 164
    const/4 v3, 0x0

    .line 165
    .local v3, "positionCat":I
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->catId:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 166
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_50

    .line 167
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getMode()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "cat"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    iget-object v5, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->catId:Ljava/lang/String;

    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 168
    move v3, v1

    .line 166
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 173
    .end local v1    # "i":I
    :cond_50
    new-instance v2, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-direct {v2}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;-><init>()V

    .line 174
    .local v2, "item":Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;
    const-string/jumbo v4, "Dashboard"

    invoke-virtual {v2, v4}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->setName(Ljava/lang/String;)V

    .line 176
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v4, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 178
    new-instance v4, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

    iget-object v5, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    iget-object v7, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-direct {v4, v5, v6, v7}, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->adapter:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

    .line 179
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->adapter:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 180
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 182
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->viewpagertab:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    new-instance v5, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;

    invoke-direct {v5, p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;-><init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V

    invoke-virtual {v4, v5}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setCustomTabView(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;)V

    .line 221
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->viewpagertab:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v5, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v5}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 222
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->viewpagertab:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-virtual {v4, p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 223
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->viewpagertab:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    sget v5, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->gScreenWidth:I

    div-int/lit8 v5, v5, 0x3

    sget v6, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->gScreenWidth:I

    div-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v8, v6, v8}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setPadding(IIII)V

    .line 225
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->catId:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b1

    .line 226
    add-int/lit8 v3, v3, 0x1

    .line 228
    :cond_b1
    move v0, v3

    .line 229
    .local v0, "finalPositionCat":I
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->gHandler:Landroid/os/Handler;

    new-instance v5, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$4;

    invoke-direct {v5, p0, v0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$4;-><init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;I)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5
.end method

.method private loadData()V
    .registers 4

    .prologue
    .line 292
    const-string/jumbo v1, "menu_bzbs"

    iget-object v2, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlMarketPlaceMenu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->progressGoogle:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 295
    new-instance v1, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    iget-object v2, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-direct {v1, v2, v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const-class v2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->setCache(Ljava/lang/String;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->MarketPlaceMenuAsynctask:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    .line 296
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->MarketPlaceMenuAsynctask:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    new-instance v2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;-><init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V

    invoke-virtual {v1, v2}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->excuteList(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;)V

    .line 328
    return-void
.end method

.method private nextActivity(Landroid/content/Intent;)V
    .registers 2
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 432
    return-void
.end method

.method private nextActivityMarketPlaceDetail(Lcom/bzbs/marketplace/model/dashboard/DashboardModel;)V
    .registers 8
    .param p1, "item"    # Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    .prologue
    .line 419
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const-class v5, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 420
    .local v1, "i":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 421
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v3, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct {v3}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;-><init>()V

    .line 422
    .local v3, "marketPlaceListModel":Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setID(Ljava/lang/String;)V

    .line 423
    const-string/jumbo v4, "ItemMarketPlace"

    const-class v5, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-static {v5, v3}, Lorg/parceler/Parcels;->wrap(Ljava/lang/Class;Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 424
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getLine2()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4b

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getLine2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ads"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    const/4 v2, 0x1

    .line 425
    .local v2, "isAds":Z
    :goto_3e
    const-string/jumbo v4, "ItemMarketPlace::Ads::Ins"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 426
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 427
    invoke-direct {p0, v1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->nextActivity(Landroid/content/Intent;)V

    .line 428
    return-void

    .line 424
    .end local v2    # "isAds":Z
    :cond_4b
    const/4 v2, 0x0

    goto :goto_3e
.end method


# virtual methods
.method public createLayout(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->setToolbarShowHome()V

    .line 72
    const-string/jumbo v3, ""

    invoke-virtual {p0, v3, v6}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->setToolbarTitle(Ljava/lang/String;Z)V

    .line 73
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->setHideSearch()V

    .line 75
    invoke-virtual {p0, v5}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->setActionBarIcon(I)V

    .line 77
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "catId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->catId:Ljava/lang/String;

    .line 78
    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->catId:Ljava/lang/String;

    if-nez v3, :cond_27

    .line 79
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->catId:Ljava/lang/String;

    .line 83
    :cond_27
    const-string/jumbo v3, "BZB Marketplace"

    invoke-static {v3}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsScreen(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "from_noti"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 86
    .local v2, "is_from_noti":Z
    if-ne v2, v6, :cond_7b

    .line 87
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "campaign_id"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 88
    .local v0, "campaignID":I
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "from_noti_alert"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "campaignName":Ljava/lang/String;
    const-string/jumbo v3, "Push Notification"

    const-string/jumbo v4, "Click Bzbs Category"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "from_noti_type"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .end local v0    # "campaignID":I
    .end local v1    # "campaignName":Ljava/lang/String;
    :cond_7b
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$1;

    invoke-direct {v4, p0, p1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$1;-><init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;Landroid/os/Bundle;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    return-void
.end method

.method public getLayoutResource()I
    .registers 2

    .prologue
    .line 66
    const v0, 0x7f040036

    return v0
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
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->MarketPlaceMenuAsynctask:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    if-eqz v0, :cond_c

    .line 151
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->MarketPlaceMenuAsynctask:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->onCancel()V

    .line 153
    :cond_c
    return-void
.end method

.method public onEventDashboardClickItem(Lcom/bzbs/marketplace/model/dashboard/DashboardModel;)V
    .registers 14
    .param p1, "item"    # Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    .prologue
    .line 342
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_campaign_ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 343
    :cond_41
    const-string/jumbo v1, "BZB Marketplace"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Click Dashboard "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    const-string/jumbo v0, "Category"

    :goto_60
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getCat()Ljava/lang/String;

    move-result-object v0

    :goto_7e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getGa_label()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :goto_98
    if-nez p1, :cond_b2

    .line 415
    :cond_9a
    :goto_9a
    return-void

    .line 343
    :cond_9b
    const-string/jumbo v0, "Campaign"

    goto :goto_60

    :cond_9f
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_7e

    .line 345
    :cond_a4
    const-string/jumbo v0, "BZB Marketplace"

    const-string/jumbo v1, "Click Dashboard Banner"

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getGa_label()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98

    .line 352
    :cond_b2
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e5

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e5

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_campaign_ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 354
    :cond_e5
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->nextActivityMarketPlaceDetail(Lcom/bzbs/marketplace/model/dashboard/DashboardModel;)V

    goto :goto_9a

    .line 355
    :cond_e9
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10b

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 357
    :cond_10b
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getCat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9a

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getCat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 358
    const/4 v11, 0x1

    .local v11, "position":I
    :goto_123
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_9a

    .line 359
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15c

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getCat()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 360
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v11, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 358
    :cond_15c
    add-int/lit8 v11, v11, 0x1

    goto :goto_123

    .line 364
    .end local v11    # "position":I
    :cond_15f
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 366
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "link"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_196

    .line 368
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 369
    .local v10, "openUrlIntent":Landroid/content/Intent;
    invoke-virtual {p0, v10}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9a

    .line 371
    .end local v10    # "openUrlIntent":Landroid/content/Intent;
    :cond_196
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "openapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20c

    .line 373
    :try_start_1a7
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getAnd_ns()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 374
    .local v7, "LaunchApp":Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_1a7 .. :try_end_1b6} :catch_1b8

    goto/16 :goto_9a

    .line 375
    .end local v7    # "LaunchApp":Landroid/content/Intent;
    :catch_1b8
    move-exception v9

    .line 377
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_1b9
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
    :try_end_1e0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1b9 .. :try_end_1e0} :catch_1e2

    goto/16 :goto_9a

    .line 378
    :catch_1e2
    move-exception v8

    .line 379
    .local v8, "anfe":Landroid/content/ActivityNotFoundException;
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

    goto/16 :goto_9a

    .line 382
    .end local v8    # "anfe":Landroid/content/ActivityNotFoundException;
    .end local v9    # "ex":Ljava/lang/Exception;
    :cond_20c
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b3

    .line 384
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getMenu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "newsfeeds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 386
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getMenu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "activities"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 388
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getMenu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "friends"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 390
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getMenu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_fanpage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 392
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getMenu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "badges"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 394
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getMenu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "marketplace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 396
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getMenu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "checkins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 399
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f090377

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getMenu()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static/range {v0 .. v6}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->getAlertBlurDialog(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9a

    .line 402
    :cond_2b3
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "highlight_campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 404
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "highlight_cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 406
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "highlight_event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 408
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hashtag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 410
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign_all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

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

    goto/16 :goto_9a
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 288
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 8
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getName_en()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->category:Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a6

    .line 244
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->category:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;->autoValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

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

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Category"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsScreen(Ljava/lang/String;)V

    .line 247
    :cond_48
    const-string/jumbo v1, "BZB Marketplace"

    const-string/jumbo v2, "View Scroll Bar Category"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

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

    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->category:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string/jumbo v1, "BZB Marketplace"

    const-string/jumbo v2, "View BZB Category"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

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

    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->category:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_a6
    return-void
.end method

.method public onPageSelected(I)V
    .registers 9
    .param p1, "position"    # I

    .prologue
    .line 255
    :try_start_0
    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getName_en()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->category:Ljava/lang/String;

    .line 256
    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->category:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Lcom/bzbs/marketplace/util/lib_utils/ValidateUtils;->autoValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BZB "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->category:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Category"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsScreen(Ljava/lang/String;)V

    .line 259
    :cond_40
    const-string/jumbo v4, "BZB Marketplace"

    const-string/jumbo v5, "Click Scroll Bar Category"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "|"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->category:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string/jumbo v4, "BZB Marketplace"

    const-string/jumbo v5, "Click BZB Category"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "|"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->category:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->lastPosition:I

    if-lez v3, :cond_f9

    .line 264
    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->viewpagertab:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->lastPosition:I

    invoke-virtual {v3, v4}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getTabAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f10067b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 265
    .local v2, "imageIcon":Landroid/widget/ImageView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bzbs/data/AppSetting;->API_URL_BZBS_BLOB:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "campaigncat/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    iget v5, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->lastPosition:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_gift_inactive"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "cat_img_url":Ljava/lang/String;
    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    sget-object v4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 269
    .end local v0    # "cat_img_url":Ljava/lang/String;
    .end local v2    # "imageIcon":Landroid/widget/ImageView;
    :cond_f9
    if-lez p1, :cond_16b

    .line 270
    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->adapter:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v4, p1}, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    .line 271
    .local v1, "fm":Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;
    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->category:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->onStartUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->viewpagertab:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-virtual {v3, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getTabAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f10067b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 274
    .restart local v2    # "imageIcon":Landroid/widget/ImageView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bzbs/data/AppSetting;->API_URL_BZBS_BLOB:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "campaigncat/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_gift_active"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    .restart local v0    # "cat_img_url":Ljava/lang/String;
    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    sget-object v4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 277
    iput p1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->lastPosition:I
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16b} :catch_16c

    .line 282
    .end local v0    # "cat_img_url":Ljava/lang/String;
    .end local v1    # "fm":Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;
    .end local v2    # "imageIcon":Landroid/widget/ImageView;
    :cond_16b
    :goto_16b
    return-void

    .line 279
    :catch_16c
    move-exception v3

    goto :goto_16b
.end method

.method protected onResume()V
    .registers 7

    .prologue
    .line 116
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onResume()V

    .line 117
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->callCountCart(Z)V

    .line 119
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 120
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_22

    .line 121
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const v2, 0x7f09024b

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    :cond_22
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->gHandler:Landroid/os/Handler;

    new-instance v2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$2;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$2;-><init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    return-void
.end method

.method protected setFontTypeFace()V
    .registers 1

    .prologue
    .line 112
    return-void
.end method
