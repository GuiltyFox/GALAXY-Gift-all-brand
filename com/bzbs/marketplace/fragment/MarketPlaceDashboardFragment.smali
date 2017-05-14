.class public Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;
.super Lcom/bzbs/marketplace/base/BaseFragment;
.source "MarketPlaceDashboardFragment.java"


# instance fields
.field container:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100193
    .end annotation
.end field

.field expandedImage:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006ae
    .end annotation
.end field

.field g:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

.field h:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

.field private i:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

.field private j:Landroid/support/v7/widget/GridLayoutManager;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10066e
    .end annotation
.end field

.field recyclerViewMarketPlaceList:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006ab
    .end annotation
.end field

.field rootFooter:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006ac
    .end annotation
.end field

.field tvResult:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006ad
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseFragment;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->k:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->k:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;)V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->e()V

    return-void
.end method

.method static synthetic b(Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->i:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    return-object v0
.end method

.method private b()V
    .registers 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_2e

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->k:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->a:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->j:Landroid/support/v7/widget/GridLayoutManager;

    .line 90
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->recyclerViewMarketPlaceList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->j:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 91
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$1;-><init>(Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 97
    return-void

    .line 87
    :array_2e
    .array-data 4
        0x7f0f0035
        0x7f0f0036
        0x7f0f0037
    .end array-data
.end method

.method private c()V
    .registers 4

    .prologue
    .line 100
    new-instance v0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->k:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->h:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

    .line 101
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->recyclerViewMarketPlaceList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->h:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 102
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->h:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->a(Ljava/util/ArrayList;)V

    .line 103
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->f()V

    .line 104
    return-void
.end method

.method static synthetic c(Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;)V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->c()V

    return-void
.end method

.method static synthetic d(Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d()V
    .registers 6

    .prologue
    .line 108
    const-string/jumbo v0, ""

    const-string/jumbo v1, "menu_bzbs"

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlMarketPlaceMenuCampaign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->i:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 111
    new-instance v1, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->a:Landroid/app/Activity;

    const/4 v3, 0x0

    sget-object v4, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->a:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    iput-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->g:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    .line 112
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->g:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    const-class v1, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->c(Ljava/lang/String;)Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    .line 114
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->g:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    new-instance v1, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$2;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$2;-><init>(Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 155
    return-void
.end method

.method private e()V
    .registers 2

    .prologue
    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->k:Ljava/util/ArrayList;

    .line 161
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->d()V

    .line 162
    return-void
.end method

.method private f()V
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->h:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

    new-instance v1, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$3;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment$3;-><init>(Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->a(Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;)V

    .line 179
    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    .prologue
    .line 66
    const v0, 0x7f040151

    return v0
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->y:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->i:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    .line 74
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->b()V

    .line 75
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->d()V

    .line 76
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseFragment;->onDestroy()V

    .line 81
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->g:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    if-eqz v0, :cond_c

    .line 82
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;->g:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b()V

    .line 84
    :cond_c
    return-void
.end method
