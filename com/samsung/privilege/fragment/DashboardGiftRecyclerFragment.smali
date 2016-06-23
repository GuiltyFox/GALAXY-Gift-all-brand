.class public Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;
.super Landroid/support/v4/app/Fragment;
.source "DashboardGiftRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;,
        Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$CheckWalletListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private autoScroll:Ljava/lang/String;

.field private callbackManager:Lcom/facebook/CallbackManager;

.field private doRedeeming:Z

.field private gDialog:Landroid/app/ProgressDialog;

.field private loading:Z

.field private mDashboardAdapter:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

.field private mDashboardImagePagerAdapter:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;

.field private mFont:Landroid/graphics/Typeface;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mLeak:Landroid/view/View;

.field private mRecyclerDashboard:Landroid/support/v7/widget/RecyclerView;

.field private timerTaskPager:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 94
    const-class v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->TAG:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->autoScroll:Ljava/lang/String;

    .line 109
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->loading:Z

    .line 2577
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->doRedeeming:Z

    return-void
.end method

.method private InitialDashboardItems(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/DashboardItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 624
    .local p1, "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/DashboardItem;>;"
    invoke-static {p1}, Lcom/bzbs/bean/DashboardRow;->GetArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 626
    .local v1, "dashboardRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/DashboardRow;>;"
    const/4 v2, 0x0

    .line 627
    .local v2, "haveWalletItem":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_21

    .line 628
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardItem;

    .line 629
    .local v0, "dashboardItem":Lcom/bzbs/bean/DashboardItem;
    iget-object v5, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v6, "wallet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 630
    const/4 v2, 0x1

    .line 627
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 634
    .end local v0    # "dashboardItem":Lcom/bzbs/bean/DashboardItem;
    :cond_21
    const/4 v5, 0x1

    if-ne v2, v5, :cond_4a

    .line 635
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 636
    .local v4, "tokenBzBs":Ljava/lang/String;
    if-eqz v4, :cond_3b

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 637
    invoke-direct {p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getWalletCardList(Ljava/util/ArrayList;)V

    .line 646
    .end local v4    # "tokenBzBs":Ljava/lang/String;
    :goto_3a
    return-void

    .line 639
    .restart local v4    # "tokenBzBs":Ljava/lang/String;
    :cond_3b
    new-instance v5, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-direct {v5, p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/util/List;)V

    iput-object v5, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mDashboardAdapter:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    .line 640
    iget-object v5, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mRecyclerDashboard:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mDashboardAdapter:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_3a

    .line 643
    .end local v4    # "tokenBzBs":Ljava/lang/String;
    :cond_4a
    new-instance v5, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-direct {v5, p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/util/List;)V

    iput-object v5, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mDashboardAdapter:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    .line 644
    iget-object v5, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mRecyclerDashboard:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mDashboardAdapter:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_3a
.end method

.method static synthetic access$100(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->loadDashboard(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->processJsonPremium(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mDashboardAdapter:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;)Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;
    .param p1, "x1"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mDashboardAdapter:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/support/v7/widget/RecyclerView;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mRecyclerDashboard:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->checkCacheAndLoadNew()V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;Lcom/bzbs/bean/DashboardItem;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/bzbs/bean/DashboardItem;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->sendGA(Ljava/lang/String;Lcom/bzbs/bean/DashboardItem;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->gDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;
    .param p1, "x1"    # Lcom/bzbs/bean/DashboardItem;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->handleDashboardItem(Lcom/bzbs/bean/DashboardItem;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mDashboardImagePagerAdapter:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;)Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;
    .param p1, "x1"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mDashboardImagePagerAdapter:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->autoScroll:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->autoScroll:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;JLandroid/support/v4/view/ViewPager;)V
    .registers 5
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->setInterval(JLandroid/support/v4/view/ViewPager;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;
    .param p1, "x1"    # Lcom/bzbs/bean/DashboardItem;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->doRedeem(Lcom/bzbs/bean/DashboardItem;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2702(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->doRedeeming:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;
    .param p1, "x1"    # Lcom/bzbs/bean/DashboardItem;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getLastRedeemCode(Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getWalletCardList(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getParamArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mLeak:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .registers 5
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->loadPremiumDataFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->InitialDashboardItems(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$902(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->loading:Z

    return p1
.end method

.method private bindingEvent()V
    .registers 4

    .prologue
    .line 227
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mLeak:Landroid/view/View;

    const v2, 0x7f100107

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 228
    .local v0, "swipeRefreshLayout":Landroid/support/v4/widget/SwipeRefreshLayout;
    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$3;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 234
    return-void
.end method

.method private checkCacheAndLoadNew()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 300
    const-string/jumbo v8, "dashboard_key"

    invoke-direct {p0, v8}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getParamArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "dashboard_key":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "cache_dashboard_gift_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "catch_data":Ljava/lang/String;
    const-string/jumbo v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b8

    .line 304
    :try_start_40
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/bean/DashboardItem;->GetArrayList(Lorg/json/JSONArray;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 317
    .local v0, "arrayDashboardItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/DashboardItem;>;"
    if-eqz v0, :cond_7c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7c

    .line 318
    const/4 v4, 0x0

    .line 319
    .local v4, "haveHashtag":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_57
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_77

    .line 320
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/bean/DashboardItem;

    .line 322
    .local v2, "dashboardItem":Lcom/bzbs/bean/DashboardItem;
    iget-object v8, v2, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v9, "hashtag"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b5

    .line 323
    const/4 v4, 0x1

    .line 324
    iget-object v8, v2, Lcom/bzbs/bean/DashboardItem;->hashtag_list_agency:Ljava/lang/String;

    iget-object v9, v2, Lcom/bzbs/bean/DashboardItem;->hashtag_list_config:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v0, v10}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->loadPremiumDataFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 329
    .end local v2    # "dashboardItem":Lcom/bzbs/bean/DashboardItem;
    :cond_77
    if-nez v4, :cond_7c

    .line 330
    invoke-direct {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->InitialDashboardItems(Ljava/util/ArrayList;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_7c} :catch_bc

    .line 337
    .end local v0    # "arrayDashboardItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/DashboardItem;>;"
    .end local v4    # "haveHashtag":Z
    .end local v5    # "i":I
    :cond_7c
    :goto_7c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "cache_dashboard_gift_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/util/LocalFileHelper;->getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v6

    .line 338
    .local v6, "times_sec":J
    const-wide/16 v8, 0xe10

    cmp-long v8, v6, v8

    if-lez v8, :cond_b4

    .line 339
    invoke-direct {p0, v11}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->loadDashboard(Z)V

    .line 344
    .end local v6    # "times_sec":J
    :cond_b4
    :goto_b4
    return-void

    .line 319
    .restart local v0    # "arrayDashboardItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/DashboardItem;>;"
    .restart local v2    # "dashboardItem":Lcom/bzbs/bean/DashboardItem;
    .restart local v4    # "haveHashtag":Z
    .restart local v5    # "i":I
    :cond_b5
    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    .line 342
    .end local v0    # "arrayDashboardItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/DashboardItem;>;"
    .end local v2    # "dashboardItem":Lcom/bzbs/bean/DashboardItem;
    .end local v4    # "haveHashtag":Z
    .end local v5    # "i":I
    :cond_b8
    invoke-direct {p0, v11}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->loadDashboard(Z)V

    goto :goto_b4

    .line 333
    :catch_bc
    move-exception v8

    goto :goto_7c
.end method

.method private doRedeem(Lcom/bzbs/bean/DashboardItem;)V
    .registers 14
    .param p1, "dashboardItem"    # Lcom/bzbs/bean/DashboardItem;

    .prologue
    const/4 v11, 0x1

    .line 2579
    iget-boolean v7, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->doRedeeming:Z

    if-ne v7, v11, :cond_e

    .line 2580
    iget-object v7, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "if (doRedeeming == true) {"

    invoke-static {v7, v8}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2740
    :cond_d
    :goto_d
    return-void

    .line 2582
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 2583
    .local v5, "token":Ljava/lang/String;
    if-eqz v5, :cond_d

    const-string/jumbo v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 2584
    iput-boolean v11, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->doRedeeming:Z

    .line 2586
    new-instance v2, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2587
    .local v2, "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/bzbs/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2591
    .local v0, "carrier":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "api/campaign/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/redeem"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2592
    .local v6, "url":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(doRedeem)url="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2594
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string/jumbo v8, ""

    const v9, 0x7f09026f

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v11, v10}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->gDialog:Landroid/app/ProgressDialog;

    .line 2597
    :try_start_85
    iget-object v7, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->gDialog:Landroid/app/ProgressDialog;

    const v8, 0x102000b

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2598
    .local v3, "mMessageView":Landroid/widget/TextView;
    if-eqz v3, :cond_a2

    .line 2599
    iget-object v7, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mFont:Landroid/graphics/Typeface;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2600
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_a2} :catch_c6

    .line 2606
    .end local v3    # "mMessageView":Landroid/widget/TextView;
    :cond_a2
    :goto_a2
    new-instance v4, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v4}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 2607
    .local v4, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v7, "token"

    invoke-virtual {v4, v7, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    const-string/jumbo v7, "carrier"

    invoke-virtual {v4, v7, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2610
    new-instance v1, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 2611
    .local v1, "client":Lcom/loopj/android/http/AsyncHttpClient;
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    new-instance v8, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    invoke-direct {v8, p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v1, v7, v6, v4, v8}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto/16 :goto_d

    .line 2602
    .end local v1    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v4    # "params":Lcom/loopj/android/http/RequestParams;
    :catch_c6
    move-exception v7

    goto :goto_a2
.end method

.method private getLastRedeemCode(Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V
    .registers 8
    .param p1, "dashboardItem"    # Lcom/bzbs/bean/DashboardItem;
    .param p2, "error_message"    # Ljava/lang/String;

    .prologue
    .line 2743
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "api/redeem?campaignId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&type=list2&mode=all&token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2744
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(getLastRedeemCode)url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2747
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 2748
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$10;

    invoke-direct {v3, p0, p1, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$10;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 2825
    return-void
.end method

.method private getParamArguments(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 283
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 284
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "param":Ljava/lang/String;
    if-eqz v1, :cond_1a

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 294
    .end local v1    # "param":Ljava/lang/String;
    :goto_19
    return-object v1

    .line 288
    .restart local v1    # "param":Ljava/lang/String;
    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    .line 291
    .end local v1    # "param":Ljava/lang/String;
    :cond_27
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_34

    move-result-object v1

    goto :goto_19

    .line 293
    :catch_34
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, ""

    goto :goto_19
.end method

.method private getWalletCardList(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/DashboardRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 649
    .local p1, "dashboardRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/DashboardRow;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bzbs/data/AppSetting;->API_URL_WALLET:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "api/card?mode=user_all&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->GetTokenWallet(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 650
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getWalletCardList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 652
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    iget-object v3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mLeak:Landroid/view/View;

    const v4, 0x7f1000cc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 653
    .local v1, "pbLoading":Landroid/widget/ProgressBar;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 654
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$6;

    invoke-direct {v4, p0, v1, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$6;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/widget/ProgressBar;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3, v2, v4}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 752
    return-void
.end method

.method private handleDashboardItem(Lcom/bzbs/bean/DashboardItem;)V
    .registers 32
    .param p1, "dashboardItem"    # Lcom/bzbs/bean/DashboardItem;

    .prologue
    .line 2313
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    if-nez v25, :cond_7

    .line 2575
    :cond_6
    :goto_6
    return-void

    .line 2317
    :cond_7
    const-string/jumbo v25, "Click"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->sendGA(Ljava/lang/String;Lcom/bzbs/bean/DashboardItem;)V

    .line 2320
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "campaign"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_297

    .line 2321
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/bzbs/bean/DashboardItem;->autoredeem:Z

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_226

    .line 2322
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v25

    if-nez v25, :cond_4d

    .line 2323
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    const v26, 0x7f0900d5

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    .line 2325
    :cond_4d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    .line 2326
    .local v23, "token":Ljava/lang/String;
    if-eqz v23, :cond_18c

    const-string/jumbo v25, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_18c

    .line 2327
    const/4 v13, 0x1

    .line 2328
    .local v13, "flowRedeem":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Lcom/bzbs/bean/DashboardItem;->id:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/bzbs/data/UserLogin;->GetLastReDeemCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2329
    .local v17, "lastCode":Ljava/lang/String;
    if-eqz v17, :cond_114

    const-string/jumbo v25, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_114

    .line 2330
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_112

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_112

    .line 2331
    const/4 v13, 0x0

    .line 2339
    :goto_9e
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v13, v0, :cond_116

    .line 2340
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2341
    .local v8, "builder":Landroid/app/AlertDialog$Builder;
    const v25, 0x7f090384

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2342
    const v25, 0x7f0900cc

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v25

    const v26, 0x7f090317

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v26

    new-instance v27, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$8;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$8;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual/range {v25 .. v27}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v25

    const v26, 0x7f090328

    .line 2348
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v26

    new-instance v27, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$7;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$7;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual/range {v25 .. v27}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2358
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 2359
    .local v6, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_6

    .line 2333
    .end local v6    # "alert":Landroid/app/AlertDialog;
    .end local v8    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_112
    const/4 v13, 0x1

    goto :goto_9e

    .line 2336
    :cond_114
    const/4 v13, 0x1

    goto :goto_9e

    .line 2362
    :cond_116
    :try_start_116
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0xb

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_13c

    .line 2364
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    const-string/jumbo v26, "clipboard"

    invoke-virtual/range {v25 .. v26}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ClipboardManager;

    .line 2365
    .local v10, "clipboard":Landroid/content/ClipboardManager;
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 2367
    const-string/jumbo v25, "Your discount code is already in clipboard."

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->showToast(Ljava/lang/String;)V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_13c} :catch_769

    .line 2373
    .end local v10    # "clipboard":Landroid/content/ClipboardManager;
    :cond_13c
    :goto_13c
    new-instance v15, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    const-class v26, Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2374
    .local v15, "intent":Landroid/content/Intent;
    const-string/jumbo v25, "url"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2375
    const-string/jumbo v25, "serial"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2376
    const-string/jumbo v25, "enable_webview_back"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2377
    const-string/jumbo v25, "hide_serial"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/bzbs/bean/DashboardItem;->autoredeem_hideserial:Z

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2378
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v15, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_6

    .line 2381
    .end local v13    # "flowRedeem":Z
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "lastCode":Ljava/lang/String;
    :cond_18c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/samsung/privilege/activity/DashboardActivity;

    move/from16 v25, v0

    if-eqz v25, :cond_1df

    .line 2382
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    check-cast v25, Lcom/samsung/privilege/activity/DashboardActivity;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardActivity;->callbackManager:Lcom/facebook/CallbackManager;

    move-object/from16 v25, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Dashboard "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "header_en"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getParamArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v29, "autoredeem"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2384
    :cond_1df
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    check-cast v25, Lcom/samsung/privilege/activity/MainPagerActivity;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    move-object/from16 v25, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Dashboard "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "header_en"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getParamArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v29, "autoredeem"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2389
    .end local v23    # "token":Ljava/lang/String;
    :cond_226
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->campaigndetail_layout:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "premium"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_266

    .line 2394
    new-instance v15, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-class v26, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2395
    .restart local v15    # "intent":Landroid/content/Intent;
    const/high16 v25, 0x40000000

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2396
    const-string/jumbo v25, "campaign_id"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/bzbs/bean/DashboardItem;->id:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2397
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2399
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_266
    new-instance v15, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-class v26, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2400
    .restart local v15    # "intent":Landroid/content/Intent;
    const/high16 v25, 0x40000000

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2401
    const-string/jumbo v25, "campaign_id"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/bzbs/bean/DashboardItem;->id:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2402
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2407
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_297
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "bzbs_campaign"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2fc

    .line 2413
    new-instance v15, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-class v26, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2414
    .restart local v15    # "intent":Landroid/content/Intent;
    new-instance v18, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct/range {v18 .. v18}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;-><init>()V

    .line 2415
    .local v18, "model":Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/bzbs/bean/DashboardItem;->id:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setID(Ljava/lang/String;)V

    .line 2416
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 2417
    .local v9, "bundle":Landroid/os/Bundle;
    const-string/jumbo v25, "ItemMarketPlace"

    invoke-static/range {v18 .. v18}, Lorg/parceler/Parcels;->wrap(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2418
    const-string/jumbo v25, "ItemMarketPlace::Ads::Ins"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2419
    invoke-virtual {v15, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2420
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2423
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v18    # "model":Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;
    :cond_2fc
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "bzbs_campaign_ads"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_361

    .line 2429
    new-instance v15, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-class v26, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2430
    .restart local v15    # "intent":Landroid/content/Intent;
    new-instance v18, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct/range {v18 .. v18}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;-><init>()V

    .line 2431
    .restart local v18    # "model":Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/bzbs/bean/DashboardItem;->id:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setID(Ljava/lang/String;)V

    .line 2432
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 2433
    .restart local v9    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v25, "ItemMarketPlace"

    invoke-static/range {v18 .. v18}, Lorg/parceler/Parcels;->wrap(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2434
    const-string/jumbo v25, "ItemMarketPlace::Ads::Ins"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2435
    invoke-virtual {v15, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2436
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2439
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v18    # "model":Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;
    :cond_361
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "cat"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_389

    .line 2440
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    check-cast v19, Lcom/samsung/privilege/activity/MainPagerActivity;

    .line 2441
    .local v19, "objMainPagerActivity":Lcom/samsung/privilege/activity/MainPagerActivity;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->cat:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->setSelectedTabByCat(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2444
    .end local v19    # "objMainPagerActivity":Lcom/samsung/privilege/activity/MainPagerActivity;
    :cond_389
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "none"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 2446
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "link"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3d0

    .line 2447
    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v25, "android.intent.action.VIEW"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->url:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2448
    .local v20, "openUrlIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2451
    .end local v20    # "openUrlIntent":Landroid/content/Intent;
    :cond_3d0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "openapp"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_523

    .line 2453
    :try_start_3e3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->and_ns:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3f4
    .catch Ljava/lang/Exception; {:try_start_3e3 .. :try_end_3f4} :catch_4c3

    move-result-object v5

    .line 2456
    .local v5, "LaunchApp":Landroid/content/Intent;
    :try_start_3f5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->and_ns_params:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4bc

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->and_ns_params:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_4bc

    .line 2457
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->and_ns_params:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 2458
    .local v21, "params":[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_41a
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v25, v0
    :try_end_41f
    .catch Ljava/lang/Exception; {:try_start_3f5 .. :try_end_41f} :catch_4bb

    move/from16 v0, v25

    if-ge v14, v0, :cond_4bc

    .line 2460
    :try_start_423
    aget-object v25, v21, v14

    const-string/jumbo v26, "="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2461
    .local v11, "datas":[Ljava/lang/String;
    const/16 v25, 0x0

    aget-object v25, v11, v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 2462
    .local v16, "key":Ljava/lang/String;
    const/16 v25, 0x1

    aget-object v25, v11, v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    .line 2463
    .local v24, "value":Ljava/lang/String;
    const-string/jumbo v25, "<"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_4b3

    .line 2464
    const-string/jumbo v25, ">"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 2465
    .local v22, "temps":[Ljava/lang/String;
    const/16 v25, 0x0

    aget-object v25, v22, v25

    const-string/jumbo v26, "<int"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_46b

    .line 2466
    const/16 v25, 0x1

    aget-object v25, v22, v25

    invoke-static/range {v25 .. v25}, Lcom/bzbs/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2458
    .end local v11    # "datas":[Ljava/lang/String;
    .end local v16    # "key":Ljava/lang/String;
    .end local v22    # "temps":[Ljava/lang/String;
    .end local v24    # "value":Ljava/lang/String;
    :goto_468
    add-int/lit8 v14, v14, 0x1

    goto :goto_41a

    .line 2468
    .restart local v11    # "datas":[Ljava/lang/String;
    .restart local v16    # "key":Ljava/lang/String;
    .restart local v22    # "temps":[Ljava/lang/String;
    .restart local v24    # "value":Ljava/lang/String;
    :cond_46b
    const/16 v25, 0x0

    aget-object v25, v22, v25

    const-string/jumbo v26, "<double"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_48a

    .line 2469
    const/16 v25, 0x1

    aget-object v25, v22, v25

    invoke-static/range {v25 .. v25}, Lcom/bzbs/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_468

    .line 2482
    .end local v11    # "datas":[Ljava/lang/String;
    .end local v16    # "key":Ljava/lang/String;
    .end local v22    # "temps":[Ljava/lang/String;
    .end local v24    # "value":Ljava/lang/String;
    :catch_488
    move-exception v25

    goto :goto_468

    .line 2471
    .restart local v11    # "datas":[Ljava/lang/String;
    .restart local v16    # "key":Ljava/lang/String;
    .restart local v22    # "temps":[Ljava/lang/String;
    .restart local v24    # "value":Ljava/lang/String;
    :cond_48a
    const/16 v25, 0x0

    aget-object v25, v22, v25

    const-string/jumbo v26, "<boolean"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4a7

    .line 2472
    const/16 v25, 0x1

    aget-object v25, v22, v25

    invoke-static/range {v25 .. v25}, Lcom/bzbs/util/BBUtil;->CtypeBoolean(Ljava/lang/String;)Z

    move-result v25

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_468

    .line 2475
    :cond_4a7
    const/16 v25, 0x1

    aget-object v25, v22, v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_468

    .line 2479
    .end local v22    # "temps":[Ljava/lang/String;
    :cond_4b3
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4ba
    .catch Ljava/lang/Exception; {:try_start_423 .. :try_end_4ba} :catch_488

    goto :goto_468

    .line 2487
    .end local v11    # "datas":[Ljava/lang/String;
    .end local v14    # "i":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v21    # "params":[Ljava/lang/String;
    .end local v24    # "value":Ljava/lang/String;
    :catch_4bb
    move-exception v25

    .line 2491
    :cond_4bc
    :try_start_4bc
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_4c1
    .catch Ljava/lang/Exception; {:try_start_4bc .. :try_end_4c1} :catch_4c3

    goto/16 :goto_6

    .line 2492
    .end local v5    # "LaunchApp":Landroid/content/Intent;
    :catch_4c3
    move-exception v12

    .line 2494
    .local v12, "ex":Ljava/lang/Exception;
    :try_start_4c4
    new-instance v25, Landroid/content/Intent;

    const-string/jumbo v26, "android.intent.action.VIEW"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "market://details?id="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->and_ns:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    invoke-direct/range {v25 .. v27}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_4f1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4c4 .. :try_end_4f1} :catch_4f3

    goto/16 :goto_6

    .line 2495
    :catch_4f3
    move-exception v7

    .line 2496
    .local v7, "anfe":Landroid/content/ActivityNotFoundException;
    new-instance v25, Landroid/content/Intent;

    const-string/jumbo v26, "android.intent.action.VIEW"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "http://play.google.com/store/apps/details?id="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->and_ns:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    invoke-direct/range {v25 .. v27}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2501
    .end local v7    # "anfe":Landroid/content/ActivityNotFoundException;
    .end local v12    # "ex":Ljava/lang/Exception;
    :cond_523
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "bzbs_market"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_550

    .line 2507
    new-instance v15, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-class v26, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2508
    .restart local v15    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2511
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_550
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "bzbs_market_cate"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_576

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "bzbs_cat"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5a0

    .line 2518
    :cond_576
    new-instance v15, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-class v26, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2519
    .restart local v15    # "intent":Landroid/content/Intent;
    const-string/jumbo v25, "catId"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->cat:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2520
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2523
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_5a0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "bzbs_dashboard"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5cd

    .line 2529
    new-instance v15, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-class v26, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2530
    .restart local v15    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2533
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_5cd
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "sub_dashboard"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_637

    .line 2534
    new-instance v15, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-class v26, Lcom/samsung/privilege/activity/DashboardActivity;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2535
    .restart local v15    # "intent":Landroid/content/Intent;
    const-string/jumbo v25, "header_en"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2536
    const-string/jumbo v25, "header"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2537
    const-string/jumbo v25, "cat"

    const-string/jumbo v26, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2538
    const-string/jumbo v25, "dashboard_key"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->sub_dashboard_key:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2539
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2540
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_637
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "menu"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 2542
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "newsfeeds"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 2544
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "activities"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 2546
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "friends"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 2549
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "bzbs_fanpage"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 2551
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "badges"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 2553
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "marketplace"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 2555
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "checkins"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 2557
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "my_profile"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6fc

    .line 2558
    new-instance v15, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-class v26, Lcom/samsung/privilege/activity/ProfileActivity;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2559
    .restart local v15    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2560
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_6fc
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "qr_code"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_729

    .line 2561
    new-instance v15, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-class v26, Lcom/samsung/privilege/activity/QRLandingActivity;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2562
    .restart local v15    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2563
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_729
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "inapps"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 2566
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "about_us"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 2567
    new-instance v15, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-class v26, Lcom/samsung/privilege/activity/AboutUsActivity;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2568
    .restart local v15    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2369
    .end local v15    # "intent":Landroid/content/Intent;
    .restart local v13    # "flowRedeem":Z
    .restart local v17    # "lastCode":Ljava/lang/String;
    .restart local v23    # "token":Ljava/lang/String;
    :catch_769
    move-exception v25

    goto/16 :goto_13c
.end method

.method private initialLayout()V
    .registers 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mLeak:Landroid/view/View;

    const v1, 0x7f1005e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mRecyclerDashboard:Landroid/support/v7/widget/RecyclerView;

    .line 220
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mRecyclerDashboard:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 222
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 223
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mRecyclerDashboard:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 224
    return-void
.end method

.method private loadDashboard(Z)V
    .registers 11
    .param p1, "forceUpdate"    # Z

    .prologue
    const/4 v8, 0x1

    .line 347
    iget-boolean v5, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->loading:Z

    if-ne v5, v8, :cond_6

    .line 465
    :goto_5
    return-void

    .line 352
    :cond_6
    const-string/jumbo v5, "dashboard_key"

    invoke-direct {p0, v5}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getParamArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "dashboard_key":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 354
    .local v4, "url":Ljava/lang/String;
    const-string/jumbo v5, "main"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "api/main/dashboard?app_name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->DASHBOARD_KEY(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 360
    :goto_3b
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 361
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    iget-object v5, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadDashboard="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iput-boolean v8, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->loading:Z

    .line 363
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 364
    .local v2, "startTime":J
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$4;

    invoke-direct {v6, p0, v2, v3, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$4;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;JZ)V

    invoke-virtual {v0, v5, v4, v6}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto :goto_5

    .line 357
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v2    # "startTime":J
    :cond_71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "api/dashboard/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3b
.end method

.method private loadPremiumData(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 9
    .param p1, "hashtag_list_agency"    # Ljava/lang/String;
    .param p2, "hashtag_list_config"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/DashboardItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 492
    .local p3, "pArrayDashboardItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/DashboardItem;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "api/campaign"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "?device_app_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 495
    if-eqz p1, :cond_59

    const-string/jumbo v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&locationagencyid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    :cond_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&byConfig=true&config="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&format=json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 500
    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "premium_load="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 503
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$5;

    invoke-direct {v3, p0, p3, p1, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$5;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 542
    return-void
.end method

.method private loadPremiumDataFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .registers 11
    .param p1, "hashtag_list_agency"    # Ljava/lang/String;
    .param p2, "hashtag_list_config"    # Ljava/lang/String;
    .param p4, "forceUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/DashboardItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p3, "pArrayDashboardItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/DashboardItem;>;"
    const/4 v1, 0x1

    if-ne p4, v1, :cond_7

    .line 469
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->loadPremiumData(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 488
    :cond_6
    :goto_6
    return-void

    .line 471
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dashboard_premium_data_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/bzbs/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "catch_data":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "catch_premium_data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_84

    .line 475
    :try_start_50
    invoke-direct {p0, v0, p3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->processJsonPremium(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_89

    .line 480
    :goto_53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dashboard_premium_data_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/bzbs/util/LocalFileHelper;->getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v2

    .line 481
    .local v2, "times_sec":J
    const-wide/16 v4, 0xe10

    cmp-long v1, v2, v4

    if-lez v1, :cond_6

    .line 482
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->loadPremiumData(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_6

    .line 485
    .end local v2    # "times_sec":J
    :cond_84
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->loadPremiumData(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_6

    .line 476
    :catch_89
    move-exception v1

    goto :goto_53
.end method

.method private processJsonPremium(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 25
    .param p1, "jsonText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/DashboardItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 546
    .local p2, "pArrayDashboardItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/DashboardItem;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    if-eqz v17, :cond_1bb

    .line 547
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 549
    .local v8, "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/DashboardItem;>;"
    new-instance v13, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 550
    .local v13, "jsonArray":Lorg/json/JSONArray;
    const-string/jumbo v15, ""

    .line 551
    .local v15, "lastCatName":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_16
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1ba

    move-result v17

    move/from16 v0, v17

    if-ge v12, v0, :cond_1bc

    .line 553
    :try_start_1e
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 555
    .local v14, "jsonCampaign":Lorg/json/JSONObject;
    const-string/jumbo v17, "CategoryName"

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 566
    .local v6, "catName":Ljava/lang/String;
    new-instance v16, Lcom/bzbs/bean/DashboardItem;

    invoke-direct/range {v16 .. v16}, Lcom/bzbs/bean/DashboardItem;-><init>()V

    .line 567
    .local v16, "objDashboardItem":Lcom/bzbs/bean/DashboardItem;
    const-string/jumbo v17, "campaign"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    .line 568
    const-string/jumbo v17, "small"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/bzbs/bean/DashboardItem;->size:Ljava/lang/String;

    .line 569
    const-string/jumbo v17, "ID"

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/bzbs/bean/DashboardItem;->id:I

    .line 570
    const-string/jumbo v17, "AgencyName"

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    .line 571
    const-string/jumbo v17, "Name"

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    .line 572
    const-string/jumbo v17, "Type"

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/bzbs/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    .line 573
    const-string/jumbo v17, "PointPerUnit"

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    .line 574
    const-string/jumbo v17, "Barcode"

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/bzbs/bean/DashboardItem;->campaignbarcode:Ljava/lang/String;

    .line 575
    const-string/jumbo v17, "Discount"

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/bzbs/bean/DashboardItem;->campaigndiscount:I

    .line 576
    const-string/jumbo v17, "FullImageUrl"

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    .line 577
    const-string/jumbo v17, "premium"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/bzbs/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    .line 578
    const-string/jumbo v17, "premium"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/bzbs/bean/DashboardItem;->campaigndetail_layout:Ljava/lang/String;

    .line 579
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/bzbs/bean/DashboardItem;->autoredeem:Z

    .line 581
    new-instance v11, Ljava/text/DecimalFormat;

    const-string/jumbo v17, "#,###,###"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 582
    .local v11, "formatter":Ljava/text/DecimalFormat;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    const v19, 0x7f0900e2

    invoke-virtual/range {v18 .. v19}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "Qty"

    move-object/from16 v0, v18

    invoke-static {v14, v0}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v11, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/bzbs/bean/DashboardItem;->campaignremaining:Ljava/lang/String;

    .line 584
    const-string/jumbo v17, "ExpireDate"

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/bzbs/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v18

    const-string/jumbo v17, "CurrentDate"

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/bzbs/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v20

    sub-long v2, v18, v20

    .line 585
    .local v2, "RemainingDate":J
    const-wide/16 v18, 0x0

    cmp-long v17, v2, v18

    if-lez v17, :cond_185

    .line 586
    const-wide/32 v18, 0x15180

    div-long v4, v2, v18

    .line 587
    .local v4, "RemainingDay":J
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f0900e3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f0900e4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/bzbs/bean/DashboardItem;->campaignstatus:Ljava/lang/String;

    .line 592
    .end local v4    # "RemainingDay":J
    :goto_17b
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    move-object v15, v6

    .line 551
    .end local v2    # "RemainingDate":J
    .end local v6    # "catName":Ljava/lang/String;
    .end local v11    # "formatter":Ljava/text/DecimalFormat;
    .end local v14    # "jsonCampaign":Lorg/json/JSONObject;
    .end local v16    # "objDashboardItem":Lcom/bzbs/bean/DashboardItem;
    :goto_181
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_16

    .line 589
    .restart local v2    # "RemainingDate":J
    .restart local v6    # "catName":Ljava/lang/String;
    .restart local v11    # "formatter":Ljava/text/DecimalFormat;
    .restart local v14    # "jsonCampaign":Lorg/json/JSONObject;
    .restart local v16    # "objDashboardItem":Lcom/bzbs/bean/DashboardItem;
    :cond_185
    const v17, 0x7f0900e5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/bzbs/bean/DashboardItem;->campaignstatus:Ljava/lang/String;
    :try_end_196
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_196} :catch_197
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_196} :catch_1ba

    goto :goto_17b

    .line 595
    .end local v2    # "RemainingDate":J
    .end local v6    # "catName":Ljava/lang/String;
    .end local v11    # "formatter":Ljava/text/DecimalFormat;
    .end local v14    # "jsonCampaign":Lorg/json/JSONObject;
    .end local v16    # "objDashboardItem":Lcom/bzbs/bean/DashboardItem;
    :catch_197
    move-exception v10

    .line 596
    .local v10, "e":Lorg/json/JSONException;
    :try_start_198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "(processJsonPremium):"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_181

    .line 614
    .end local v8    # "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/DashboardItem;>;"
    .end local v10    # "e":Lorg/json/JSONException;
    .end local v12    # "i":I
    .end local v13    # "jsonArray":Lorg/json/JSONArray;
    .end local v15    # "lastCatName":Ljava/lang/String;
    :catch_1ba
    move-exception v17

    .line 617
    :cond_1bb
    :goto_1bb
    return-void

    .line 600
    .restart local v8    # "dashboardItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/DashboardItem;>;"
    .restart local v12    # "i":I
    .restart local v13    # "jsonArray":Lorg/json/JSONArray;
    .restart local v15    # "lastCatName":Ljava/lang/String;
    :cond_1bc
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .local v9, "dashboardItems_Clone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/DashboardItem;>;"
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 603
    const/4 v12, 0x0

    :goto_1c7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v12, v0, :cond_1e5

    .line 604
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bzbs/bean/DashboardItem;

    .line 606
    .local v7, "dashboardItem":Lcom/bzbs/bean/DashboardItem;
    iget-object v0, v7, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "hashtag"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1eb

    .line 607
    invoke-virtual {v9, v12, v8}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 612
    .end local v7    # "dashboardItem":Lcom/bzbs/bean/DashboardItem;
    :cond_1e5
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->InitialDashboardItems(Ljava/util/ArrayList;)V
    :try_end_1ea
    .catch Ljava/lang/Exception; {:try_start_198 .. :try_end_1ea} :catch_1ba

    goto :goto_1bb

    .line 603
    .restart local v7    # "dashboardItem":Lcom/bzbs/bean/DashboardItem;
    :cond_1eb
    add-int/lit8 v12, v12, 0x1

    goto :goto_1c7
.end method

.method private refreshWalletData()V
    .registers 10

    .prologue
    .line 238
    :try_start_0
    iget-object v6, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mRecyclerDashboard:Landroid/support/v7/widget/RecyclerView;

    if-eqz v6, :cond_9c

    .line 239
    iget-object v6, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mRecyclerDashboard.getChildCount()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mRecyclerDashboard:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    iget-object v6, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mRecyclerDashboard:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_9c

    .line 241
    iget-object v6, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mRecyclerDashboard:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 242
    .local v1, "child":Landroid/view/View;
    const v6, 0x7f100512

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 243
    .local v5, "tvWalletIssuer":Landroid/widget/TextView;
    const v6, 0x7f100509

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 244
    .local v4, "tvBalanceNumber":Landroid/widget/TextView;
    if-eqz v5, :cond_91

    .line 245
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "issuer":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "issuer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/bzbs/data/UserLogin;->GetWalletAmount(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "amount":Ljava/lang/String;
    if-eqz v0, :cond_94

    const-string/jumbo v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_94

    .line 249
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " THB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    .end local v0    # "amount":Ljava/lang/String;
    .end local v3    # "issuer":Ljava/lang/String;
    :cond_91
    :goto_91
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 251
    .restart local v0    # "amount":Ljava/lang/String;
    .restart local v3    # "issuer":Ljava/lang/String;
    :cond_94
    const-string/jumbo v6, "0 THB"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9a} :catch_9b

    goto :goto_91

    .line 256
    .end local v0    # "amount":Ljava/lang/String;
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "issuer":Ljava/lang/String;
    .end local v4    # "tvBalanceNumber":Landroid/widget/TextView;
    .end local v5    # "tvWalletIssuer":Landroid/widget/TextView;
    :catch_9b
    move-exception v6

    .line 259
    :cond_9c
    return-void
.end method

.method private sendGA(Ljava/lang/String;Lcom/bzbs/bean/DashboardItem;)V
    .registers 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "dashboardItem"    # Lcom/bzbs/bean/DashboardItem;

    .prologue
    .line 2291
    if-eqz p2, :cond_62

    .line 2292
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 2293
    iget-boolean v0, p2, Lcom/bzbs/bean/DashboardItem;->autoredeem:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_63

    .line 2294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Dashboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "header_en"

    invoke-direct {p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getParamArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Campaign Autoredeem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p2, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bzbs/bean/DashboardItem;->GetCampaignNameForGA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2310
    :cond_62
    :goto_62
    return-void

    .line 2296
    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Dashboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "header_en"

    invoke-direct {p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getParamArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Campaign Banner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p2, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bzbs/bean/DashboardItem;->GetCampaignNameForGA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    .line 2298
    :cond_b4
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v1, "bzbs_campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca

    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v1, "bzbs_campaign_ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 2299
    :cond_ca
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Dashboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "header_en"

    invoke-direct {p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getParamArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " BZB Campaign Banner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p2, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bzbs/bean/DashboardItem;->GetCampaignNameForGA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_62

    .line 2300
    :cond_11c
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v1, "cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_179

    .line 2301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Dashboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "header_en"

    invoke-direct {p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getParamArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Category Banner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/bzbs/bean/DashboardItem;->cat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bzbs/bean/DashboardItem;->GetCategoryNameForGA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_62

    .line 2302
    :cond_179
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v1, "bzbs_cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d6

    .line 2303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Dashboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "header_en"

    invoke-direct {p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getParamArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " BZB Category Banner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/bzbs/bean/DashboardItem;->cat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bzbs/bean/DashboardItem;->GetCategoryNameForGA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_62

    .line 2305
    :cond_1d6
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    if-eqz v0, :cond_62

    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 2306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Dashboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "header_en"

    invoke-direct {p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getParamArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_62
.end method

.method private setInterval(JLandroid/support/v4/view/ViewPager;)V
    .registers 11
    .param p1, "interval"    # J
    .param p3, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->timerTaskPager:Ljava/util/TimerTask;

    if-eqz v0, :cond_9

    .line 174
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->timerTaskPager:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 177
    :cond_9
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$1;

    invoke-direct {v0, p0, p3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$1;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->timerTaskPager:Ljava/util/TimerTask;

    .line 191
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->timerTaskPager:Ljava/util/TimerTask;

    move-wide v2, p1

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 206
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$2;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mHandler:Landroid/os/Handler;

    .line 118
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mFont:Landroid/graphics/Typeface;

    .line 120
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 121
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->callbackManager:Lcom/facebook/CallbackManager;

    .line 123
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 124
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    const v0, 0x7f04012d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mLeak:Landroid/view/View;

    .line 130
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/privilege/activity/DashboardActivity;

    if-eqz v0, :cond_1a

    .line 131
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mLeak:Landroid/view/View;

    const v1, 0x7f020062

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 134
    :cond_1a
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mLeak:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 164
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 166
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mDashboardImagePagerAdapter:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;

    if-eqz v0, :cond_c

    .line 167
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->mDashboardImagePagerAdapter:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->onDestroy()V

    .line 169
    :cond_c
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 157
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 159
    invoke-static {}, Lcom/bzbs/event/WalletEvents;->clearPostListener()V

    .line 160
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 148
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 150
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$CheckWalletListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$CheckWalletListener;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$1;)V

    invoke-static {v0}, Lcom/bzbs/event/WalletEvents;->addWalletListener(Lcom/bzbs/event/WalletEvents$WalletListener;)V

    .line 152
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->refreshWalletData()V

    .line 153
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->initialLayout()V

    .line 140
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->bindingEvent()V

    .line 141
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->checkCacheAndLoadNew()V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Dashboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "header_en"

    invoke-direct {p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getParamArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsScreen(Ljava/lang/String;)V

    .line 144
    return-void
.end method
