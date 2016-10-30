.class public Lcom/bzbs/marketplace/fragment/DashboardFragment;
.super Lcom/bzbs/marketplace/base/BaseFragment;
.source "DashboardFragment.java"


# static fields
.field private static h:Ljava/lang/String;


# instance fields
.field g:I

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/dashboard/DashboardModel;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

.field private k:Landroid/support/v7/widget/LinearLayoutManager;

.field private l:I

.field public mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10061f
    .end annotation
.end field

.field public recyclerViewDashboard:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100620
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/bzbs/marketplace/fragment/DashboardFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseFragment;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->g:I

    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/DashboardFragment;I)I
    .registers 2

    .prologue
    .line 35
    iput p1, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->l:I

    return p1
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/DashboardFragment;)Landroid/support/v7/widget/LinearLayoutManager;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->k:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/DashboardFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->i:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/DashboardFragment;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/DashboardFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/DashboardFragment;Z)V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/DashboardFragment;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bzbs/marketplace/fragment/DashboardFragment;->a(Z)V

    .line 123
    sget-object v0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    sget-object v3, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->a:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    .line 125
    const-class v1, Lcom/bzbs/marketplace/fragment/DashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->c(Ljava/lang/String;)Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    .line 127
    new-instance v1, Lcom/bzbs/marketplace/fragment/DashboardFragment$3;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/DashboardFragment$3;-><init>(Lcom/bzbs/marketplace/fragment/DashboardFragment;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 169
    return-void
.end method

.method private a(Z)V
    .registers 2

    .prologue
    .line 118
    return-void
.end method

.method private b()V
    .registers 6

    .prologue
    .line 63
    const-string/jumbo v0, "gift_marketplace"

    invoke-static {v0}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlDashboardCustom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/bzbs/marketplace/adapter/DashboardAdapter;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->a:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/DashboardFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->j:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

    .line 65
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->k:Landroid/support/v7/widget/LinearLayoutManager;

    .line 66
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->recyclerViewDashboard:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->k:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 67
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->recyclerViewDashboard:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->j:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 68
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->j:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v2}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->a(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    .line 70
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x7f0f00ae

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 71
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v2, Lcom/bzbs/marketplace/fragment/DashboardFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/bzbs/marketplace/fragment/DashboardFragment$1;-><init>(Lcom/bzbs/marketplace/fragment/DashboardFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 79
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->recyclerViewDashboard:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_61

    .line 81
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->k:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    iput v1, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->l:I

    .line 82
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->recyclerViewDashboard:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bzbs/marketplace/fragment/DashboardFragment$2;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/fragment/DashboardFragment$2;-><init>(Lcom/bzbs/marketplace/fragment/DashboardFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 111
    :cond_61
    invoke-direct {p0, v0}, Lcom/bzbs/marketplace/fragment/DashboardFragment;->a(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method static synthetic b(Lcom/bzbs/marketplace/fragment/DashboardFragment;)V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/DashboardFragment;->c()V

    return-void
.end method

.method private c()V
    .registers 13

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 174
    const-string/jumbo v7, "big"

    .line 175
    const-string/jumbo v8, "medium"

    .line 179
    new-instance v9, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    invoke-direct {v9}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;-><init>()V

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 183
    const-string/jumbo v1, "["

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    move-object v1, v0

    move v4, v3

    .line 184
    :goto_20
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1a6

    .line 185
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    .line 187
    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getSubcampaigndetails()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_102

    .line 188
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_64

    .line 189
    invoke-virtual {v9, v1}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->setListDashboard(Ljava/util/List;)V

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v9}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 197
    :cond_64
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {v9, v1}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->setListDashboard(Ljava/util/List;)V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v9}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v0, v3

    .line 238
    :goto_90
    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_1e1

    .line 239
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1dd

    .line 240
    invoke-virtual {v9, v1}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->setListDashboard(Ljava/util/List;)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v9}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v1

    move v5, v3

    .line 247
    :goto_ca
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v11, v0, -0x1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string/jumbo v0, "]"

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v4

    move v4, v5

    .line 184
    :goto_fd
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_20

    .line 204
    :cond_102
    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getSize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_116

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getSize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14a

    :cond_116
    move v5, v3

    .line 211
    :goto_117
    if-eqz v5, :cond_14e

    .line 212
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    const/4 v0, 0x2

    if-ne v4, v0, :cond_1e4

    .line 215
    invoke-virtual {v9, v1}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->setListDashboard(Ljava/util/List;)V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v9}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v0, v3

    goto/16 :goto_90

    .line 208
    :cond_14a
    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_117

    .line 222
    :cond_14e
    if-ne v4, v6, :cond_178

    .line 223
    invoke-virtual {v9, v1}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->setListDashboard(Ljava/util/List;)V

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v9}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    :cond_178
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-virtual {v9, v1}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->setListDashboard(Ljava/util/List;)V

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v9}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v0, v3

    goto/16 :goto_90

    .line 252
    :cond_1a6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    :goto_1ab
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1bd

    .line 254
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    add-int/lit8 v3, v3, 0x1

    goto :goto_1ab

    .line 257
    :cond_1bd
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bzbs/marketplace/fragment/DashboardFragment$4;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/fragment/DashboardFragment$4;-><init>(Lcom/bzbs/marketplace/fragment/DashboardFragment;)V

    .line 258
    invoke-virtual {v2}, Lcom/bzbs/marketplace/fragment/DashboardFragment$4;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 257
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 260
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->j:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/DashboardFragment;->recyclerViewDashboard:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0, v2}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->a(Ljava/util/ArrayList;Landroid/support/v7/widget/RecyclerView;)V

    .line 261
    return-void

    :cond_1dd
    move-object v4, v1

    move v5, v0

    goto/16 :goto_ca

    :cond_1e1
    move v4, v0

    goto/16 :goto_fd

    :cond_1e4
    move v0, v4

    goto/16 :goto_90
.end method


# virtual methods
.method protected a()I
    .registers 2

    .prologue
    .line 54
    const v0, 0x7f040136

    return v0
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/DashboardFragment;->b()V

    .line 60
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 266
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseFragment;->onDestroy()V

    .line 267
    return-void
.end method
