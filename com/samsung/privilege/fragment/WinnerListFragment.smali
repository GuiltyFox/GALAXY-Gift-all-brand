.class public Lcom/samsung/privilege/fragment/WinnerListFragment;
.super Lcom/bzbs/marketplace/base/BaseFragment;
.source "WinnerListFragment.java"


# instance fields
.field private g:Landroid/support/v7/widget/LinearLayoutManager;

.field private h:Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/FriendWinnerModel;",
            ">;"
        }
    .end annotation
.end field

.field mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100642
    .end annotation
.end field

.field recyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100695
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

.method static synthetic a(Lcom/samsung/privilege/fragment/WinnerListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->i:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/WinnerListFragment;)V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/WinnerListFragment;->d()V

    return-void
.end method

.method private b()V
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

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->i:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->g:Landroid/support/v7/widget/LinearLayoutManager;

    .line 62
    new-instance v0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->h:Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;

    .line 63
    iget-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->g:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->h:Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 65
    return-void

    .line 53
    nop

    :array_3e
    .array-data 4
        0x7f0f0037
        0x7f0f0033
        0x7f0f0011
    .end array-data
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/WinnerListFragment;)V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/WinnerListFragment;->c()V

    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->h:Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;->a(Ljava/util/ArrayList;)V

    .line 69
    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/fragment/WinnerListFragment;)V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/WinnerListFragment;->e()V

    return-void
.end method

.method private d()V
    .registers 4

    .prologue
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->i:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->h:Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;

    .line 74
    iget-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->h:Lcom/bzbs/marketplace/adapter/FriendWinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 75
    new-instance v0, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/WinnerListFragment;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlWinner(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const-class v1, Lcom/bzbs/marketplace/model/FriendWinnerModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->c(Ljava/lang/String;)Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/fragment/WinnerListFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/WinnerListFragment$2;-><init>(Lcom/samsung/privilege/fragment/WinnerListFragment;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask;->a(Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackList;)V

    .line 96
    return-void
.end method

.method private e()V
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


# virtual methods
.method protected a()I
    .registers 2

    .prologue
    .line 43
    const v0, 0x7f04015c

    return v0
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/WinnerListFragment;->b()V

    .line 49
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/WinnerListFragment;->d()V

    .line 50
    return-void
.end method
