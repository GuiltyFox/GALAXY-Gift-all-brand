.class public Lcom/samsung/privilege/fragment/WinnerListFragment;
.super Lcom/bzbs/marketplace/base/BaseFragment;
.source "WinnerListFragment.java"


# instance fields
.field private adapter:Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005fb
    .end annotation
.end field

.field recyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100609
    .end annotation
.end field

.field private winners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/FriendWinnerModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/privilege/fragment/WinnerListFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/WinnerListFragment;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/WinnerListFragment;->loadData()V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/privilege/fragment/WinnerListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/WinnerListFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->winners:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/privilege/fragment/WinnerListFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/WinnerListFragment;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/WinnerListFragment;->setupWidget()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/privilege/fragment/WinnerListFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/fragment/WinnerListFragment;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/WinnerListFragment;->hideSwipeRefresh()V

    return-void
.end method

.method private hideSwipeRefresh()V
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_a

    .line 101
    iget-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 103
    :cond_a
    return-void
.end method

.method private initWidget()V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_3e

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 54
    iget-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/samsung/privilege/fragment/WinnerListFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/WinnerListFragment$1;-><init>(Lcom/samsung/privilege/fragment/WinnerListFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->winners:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 62
    new-instance v0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->adapter:Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;

    .line 63
    iget-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->adapter:Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 65
    return-void

    .line 53
    nop

    :array_3e
    .array-data 4
        0x7f0f0034
        0x7f0f0030
        0x7f0f000e
    .end array-data
.end method

.method private loadData()V
    .registers 4

    .prologue
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->winners:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->adapter:Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;

    .line 74
    iget-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->adapter:Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 75
    new-instance v0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlWinner(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const-class v1, Lcom/bzbs/marketplace/model/FriendWinnerModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->setCache(Ljava/lang/String;)Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/fragment/WinnerListFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/WinnerListFragment$2;-><init>(Lcom/samsung/privilege/fragment/WinnerListFragment;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->excuteList(Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackList;)V

    .line 96
    return-void
.end method

.method private setupWidget()V
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->adapter:Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->winners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;->addListAll(Ljava/util/ArrayList;)V

    .line 69
    return-void
.end method


# virtual methods
.method protected createLayout(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/WinnerListFragment;->initWidget()V

    .line 49
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/WinnerListFragment;->loadData()V

    .line 50
    return-void
.end method

.method protected getLayoutResource()I
    .registers 2

    .prologue
    .line 43
    const v0, 0x7f040139

    return v0
.end method
