.class public Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;
.super Lcom/bzbs/marketplace/base/BaseFragment;
.source "MarketPlaceListFragment.java"


# instance fields
.field private g:Z

.field private h:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

.field private i:Landroid/support/v7/widget/GridLayoutManager;

.field private j:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10061f
    .end annotation
.end field

.field private n:I

.field private o:I

.field private p:Z

.field private q:I

.field private r:I

.field recyclerViewMarketPlaceList:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10065c
    .end annotation
.end field

.field rootFooter:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10065d
    .end annotation
.end field

.field private s:I

.field private t:Z

.field tvResult:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10065e
    .end annotation
.end field

.field private u:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseFragment;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->g:Z

    .line 73
    iput-boolean v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->m:Z

    .line 74
    iput v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->n:I

    .line 75
    const/16 v0, 0x19

    iput v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->o:I

    .line 76
    iput-boolean v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->p:Z

    .line 80
    iput-boolean v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->t:Z

    .line 85
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->v:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, "campaign_bzbs"

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->w:Ljava/lang/String;

    .line 87
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->x:Ljava/lang/String;

    .line 88
    const-string/jumbo v0, "ALL"

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->y:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->z:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;I)I
    .registers 2

    .prologue
    .line 49
    iput p1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->r:I

    return p1
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->k:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->f()V

    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;Z)V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;ZLjava/lang/String;)V
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 319
    iput-boolean v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->p:Z

    .line 321
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_21

    .line 322
    iput-boolean v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->m:Z

    .line 323
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->z:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_21

    iget v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->n:I

    if-nez v0, :cond_21

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->l:Ljava/util/ArrayList;

    .line 325
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->d()V

    .line 329
    :cond_21
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->e()V

    .line 331
    iget-boolean v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->m:Z

    if-eqz v0, :cond_29

    .line 338
    :goto_28
    return-void

    .line 334
    :cond_29
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->l:Ljava/util/ArrayList;

    .line 335
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->tvResult:Landroid/widget/TextView;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->tvResult:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    :cond_36
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->d()V

    goto :goto_28
.end method

.method private a(Z)V
    .registers 4

    .prologue
    .line 409
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    if-eqz v0, :cond_10

    .line 410
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    if-eqz p1, :cond_11

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->c(I)V

    .line 412
    :cond_10
    return-void

    .line 410
    :cond_11
    const/16 v1, 0x8

    goto :goto_d
.end method

.method private a(ZLjava/lang/String;)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-direct {p0, v1}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a(Z)V

    .line 254
    iget-boolean v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->m:Z

    if-eqz v0, :cond_9

    .line 315
    :goto_8
    return-void

    .line 257
    :cond_9
    if-eqz p1, :cond_91

    .line 258
    iput v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->n:I

    .line 262
    :goto_d
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->v:Ljava/lang/String;

    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->w:Ljava/lang/String;

    iget v5, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->n:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlMarketPlaceList(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    const-string/jumbo v1, "OATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url:= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v1, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->u:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    .line 265
    iget-boolean v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->t:Z

    if-nez v0, :cond_9d

    if-eqz p1, :cond_9d

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->t:Z

    .line 267
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_85

    .line 268
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->u:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->v:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->w:Ljava/lang/String;

    :goto_7a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->c(Ljava/lang/String;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    .line 272
    :cond_85
    :goto_85
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->u:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    new-instance v1, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$4;-><init>(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->a(Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask$CallbackList;)V

    goto/16 :goto_8

    .line 260
    :cond_91
    iget v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->n:I

    iget v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->o:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->n:I

    goto/16 :goto_d

    .line 268
    :cond_9a
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->v:Ljava/lang/String;

    goto :goto_7a

    .line 270
    :cond_9d
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->u:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->c(Ljava/lang/String;)Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    goto :goto_85
.end method

.method static synthetic b(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;I)I
    .registers 2

    .prologue
    .line 49
    iput p1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->s:I

    return p1
.end method

.method static synthetic b(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_62

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->l:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->k:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->j:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    .line 151
    const-string/jumbo v0, "Analytics"

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->y:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->j:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Ljava/lang/String;)V

    .line 154
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->i:Landroid/support/v7/widget/GridLayoutManager;

    .line 155
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->recyclerViewMarketPlaceList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->i:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 156
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->recyclerViewMarketPlaceList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->j:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 157
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$1;-><init>(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 164
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->c()V

    .line 165
    return-void

    .line 145
    :array_62
    .array-data 4
        0x7f0f0037
        0x7f0f0033
        0x7f0f0011
    .end array-data
.end method

.method static synthetic b(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic b(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;Z)Z
    .registers 2

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->p:Z

    return p1
.end method

.method static synthetic c(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;I)I
    .registers 2

    .prologue
    .line 49
    iput p1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->q:I

    return p1
.end method

.method private c()V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->j:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    new-instance v1, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$2;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$2;-><init>(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;)V

    .line 185
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->j:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    new-instance v1, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$3;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$3;-><init>(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/listener/OnTabCartItemListener;)V

    .line 249
    return-void
.end method

.method static synthetic c(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->e()V

    return-void
.end method

.method static synthetic d(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d()V
    .registers 4

    .prologue
    .line 342
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->j:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    if-nez v0, :cond_28

    .line 343
    new-instance v0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->l:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->j:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    .line 344
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->recyclerViewMarketPlaceList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->j:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 349
    :goto_16
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->c()V

    .line 351
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->recyclerViewMarketPlaceList:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_27

    .line 352
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->recyclerViewMarketPlaceList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$5;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$5;-><init>(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 377
    :cond_27
    return-void

    .line 346
    :cond_28
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->j:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Ljava/util/ArrayList;)V

    goto :goto_16
.end method

.method static synthetic e(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->z:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .registers 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_a

    .line 383
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 385
    :cond_a
    return-void
.end method

.method static synthetic f(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)Landroid/support/v7/widget/GridLayoutManager;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->i:Landroid/support/v7/widget/GridLayoutManager;

    return-object v0
.end method

.method private f()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->j:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    .line 391
    iput-boolean v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->t:Z

    .line 392
    iput-boolean v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->m:Z

    .line 393
    iput v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->n:I

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->l:Ljava/util/ArrayList;

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->k:Ljava/util/ArrayList;

    .line 396
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->z:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a(ZLjava/lang/String;)V

    .line 397
    return-void
.end method

.method static synthetic g(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)Z
    .registers 2

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->p:Z

    return v0
.end method

.method static synthetic h(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->r:I

    return v0
.end method

.method static synthetic i(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->q:I

    return v0
.end method

.method static synthetic j(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;)I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->s:I

    return v0
.end method


# virtual methods
.method protected a()I
    .registers 2

    .prologue
    .line 94
    const v0, 0x7f040144

    return v0
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 100
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "catId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->v:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->v:Ljava/lang/String;

    if-nez v0, :cond_1c

    .line 102
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->v:Ljava/lang/String;

    .line 105
    :cond_1c
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "catName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->y:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->y:Ljava/lang/String;

    if-nez v0, :cond_32

    .line 107
    const-string/jumbo v0, "ALL"

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->y:Ljava/lang/String;

    .line 110
    :cond_32
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "configName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->w:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->w:Ljava/lang/String;

    if-nez v0, :cond_48

    .line 112
    const-string/jumbo v0, "campaign_bzbs"

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->w:Ljava/lang/String;

    .line 117
    :cond_48
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->y:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->h:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    .line 119
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->b()V

    .line 120
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->g:Z

    if-nez v0, :cond_5

    .line 141
    :goto_4
    return-void

    .line 134
    :cond_5
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->v:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->y:Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->g:Z

    .line 138
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->z:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->a(ZLjava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->d()V

    goto :goto_4
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseFragment;->onDestroy()V

    .line 125
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->u:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    if-eqz v0, :cond_c

    .line 126
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->u:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->a()V

    .line 128
    :cond_c
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 403
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseFragment;->onDestroyView()V

    .line 404
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->u:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    if-eqz v0, :cond_c

    .line 405
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment;->u:Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceListAsynctask;->a()V

    .line 406
    :cond_c
    return-void
.end method
