.class public Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;
.super Ljava/lang/Object;
.source "ViewHolderCategoryCampaign.java"


# instance fields
.field a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

.field b:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

.field private c:Landroid/view/View;

.field container:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10018e
    .end annotation
.end field

.field private d:Landroid/app/Activity;

.field private e:Landroid/support/v7/widget/GridLayoutManager;

.field expandedImage:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100682
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field recyclerViewMarketPlaceList:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10067f
    .end annotation
.end field

.field rootFooter:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100680
    .end annotation
.end field

.field tvResult:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100681
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->f:Ljava/util/ArrayList;

    .line 61
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 62
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->c:Landroid/view/View;

    .line 63
    iput-object p2, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->d:Landroid/app/Activity;

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->f:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;)V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->c()V

    return-void
.end method

.method static synthetic b(Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b()V
    .registers 4

    .prologue
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->f:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->d:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->e:Landroid/support/v7/widget/GridLayoutManager;

    .line 74
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->recyclerViewMarketPlaceList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->e:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 76
    return-void
.end method

.method static synthetic c(Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->d:Landroid/app/Activity;

    return-object v0
.end method

.method private c()V
    .registers 4

    .prologue
    .line 79
    new-instance v0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->f:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->b:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

    .line 80
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->recyclerViewMarketPlaceList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->b:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 81
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->b:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->a(Ljava/util/ArrayList;)V

    .line 82
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->e()V

    .line 83
    return-void
.end method

.method private d()V
    .registers 6

    .prologue
    .line 87
    const-string/jumbo v0, ""

    const-string/jumbo v1, "menu_bzbs"

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->d:Landroid/app/Activity;

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlMarketPlaceMenuCampaign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->d:Landroid/app/Activity;

    const/4 v3, 0x0

    sget-object v4, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->a:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    iput-object v1, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    .line 90
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    const-class v1, Lcom/bzbs/marketplace/fragment/MarketPlaceDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->c(Ljava/lang/String;)Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    .line 92
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    new-instance v1, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$1;-><init>(Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 125
    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->b:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

    new-instance v1, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$2;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$2;-><init>(Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->a(Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;)V

    .line 149
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->b()V

    .line 68
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->d()V

    .line 69
    return-void
.end method
