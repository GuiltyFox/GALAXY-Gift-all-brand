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
        value = 0x7f100172
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->lastPosition:I

    .line 51
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->catId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->adapter:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->loadData()V

    return-void
.end method

.method static synthetic access$300(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->initWidget()V

    return-void
.end method

.method private initWidget()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 147
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    if-nez v4, :cond_6

    .line 225
    :cond_5
    :goto_5
    return-void

    .line 151
    :cond_6
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_5

    .line 155
    const/4 v3, 0x0

    .line 156
    .local v3, "positionCat":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_30

    .line 157
    iget-object v5, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->catId:Ljava/lang/String;

    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 158
    move v3, v1

    .line 156
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 162
    :cond_30
    new-instance v2, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-direct {v2}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;-><init>()V

    .line 163
    .local v2, "item":Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;
    const-string/jumbo v4, "Dashboard"

    invoke-virtual {v2, v4}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->setName(Ljava/lang/String;)V

    .line 165
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v4, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 167
    new-instance v4, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

    iget-object v5, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    iget-object v7, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-direct {v4, v5, v6, v7}, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->adapter:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

    .line 168
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->adapter:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 169
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 171
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->viewpagertab:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    new-instance v5, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;

    invoke-direct {v5, p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$3;-><init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V

    invoke-virtual {v4, v5}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setCustomTabView(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;)V

    .line 210
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->viewpagertab:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v5, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v5}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 211
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->viewpagertab:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-virtual {v4, p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 212
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->viewpagertab:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    sget v5, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->gScreenWidth:I

    div-int/lit8 v5, v5, 0x3

    sget v6, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->gScreenWidth:I

    div-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v8, v6, v8}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setPadding(IIII)V

    .line 214
    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->catId:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_91

    .line 215
    add-int/lit8 v3, v3, 0x1

    .line 217
    :cond_91
    move v0, v3

    .line 218
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
    .line 274
    const-string/jumbo v1, "menu_bzbs"

    iget-object v2, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlMarketPlaceMenu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->progressGoogle:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 277
    new-instance v1, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    iget-object v2, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-direct {v1, v2, v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const-class v2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->setCache(Ljava/lang/String;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->MarketPlaceMenuAsynctask:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    .line 278
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->MarketPlaceMenuAsynctask:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    new-instance v2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;-><init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V

    invoke-virtual {v1, v2}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->excuteList(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;)V

    .line 310
    return-void
.end method


# virtual methods
.method public createLayout(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->setToolbarShowHome()V

    .line 63
    const-string/jumbo v3, ""

    invoke-virtual {p0, v3, v6}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->setToolbarTitle(Ljava/lang/String;Z)V

    .line 64
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->setHideSearch()V

    .line 66
    invoke-virtual {p0, v5}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->setActionBarIcon(I)V

    .line 68
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "catId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->catId:Ljava/lang/String;

    .line 69
    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->catId:Ljava/lang/String;

    if-nez v3, :cond_27

    .line 70
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->catId:Ljava/lang/String;

    .line 74
    :cond_27
    const-string/jumbo v3, "BZB Marketplace"

    invoke-static {v3}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsScreen(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "from_noti"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 77
    .local v2, "is_from_noti":Z
    if-ne v2, v6, :cond_7b

    .line 78
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "campaign_id"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 79
    .local v0, "campaignID":I
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "from_noti_alert"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
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

    .line 82
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "from_noti_type"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .end local v0    # "campaignID":I
    .end local v1    # "campaignName":Ljava/lang/String;
    :cond_7b
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$1;

    invoke-direct {v4, p0, p1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$1;-><init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;Landroid/os/Bundle;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    return-void
.end method

.method public getLayoutResource()I
    .registers 2

    .prologue
    .line 57
    const v0, 0x7f040036

    return v0
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_c

    .line 317
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onBackPressed()V

    .line 321
    :goto_b
    return-void

    .line 319
    :cond_c
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_b
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 140
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onDestroy()V

    .line 141
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->MarketPlaceMenuAsynctask:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    if-eqz v0, :cond_c

    .line 142
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->MarketPlaceMenuAsynctask:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask;->onCancel()V

    .line 144
    :cond_c
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 270
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 8
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getName_en()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->category:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 233
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

    .line 234
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

    .line 236
    :cond_74
    return-void
.end method

.method public onPageSelected(I)V
    .registers 10
    .param p1, "position"    # I

    .prologue
    const v7, 0x7f10065e

    .line 241
    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getName_en()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->category:Ljava/lang/String;

    .line 243
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

    .line 244
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

    .line 247
    iget v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->lastPosition:I

    if-lez v3, :cond_c7

    .line 248
    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->viewpagertab:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->lastPosition:I

    invoke-virtual {v3, v4}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getTabAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 249
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

    .line 250
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

    .line 253
    .end local v0    # "cat_img_url":Ljava/lang/String;
    .end local v2    # "imageIcon":Landroid/widget/ImageView;
    :cond_c7
    if-lez p1, :cond_136

    .line 254
    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->adapter:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->vpMain:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v4, p1}, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;

    .line 256
    .local v1, "fm":Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;
    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->category:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->onStartUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v3, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->viewpagertab:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-virtual {v3, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getTabAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 259
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

    .line 260
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

    .line 262
    iput p1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->lastPosition:I

    .line 264
    .end local v0    # "cat_img_url":Ljava/lang/String;
    .end local v1    # "fm":Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;
    .end local v2    # "imageIcon":Landroid/widget/ImageView;
    :cond_136
    return-void
.end method

.method protected onResume()V
    .registers 7

    .prologue
    .line 107
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onResume()V

    .line 108
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->callCountCart(Z)V

    .line 110
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 111
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_22

    .line 112
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const v2, 0x7f09024a

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    :cond_22
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->gHandler:Landroid/os/Handler;

    new-instance v2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$2;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$2;-><init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    return-void
.end method

.method protected setFontTypeFace()V
    .registers 1

    .prologue
    .line 103
    return-void
.end method
