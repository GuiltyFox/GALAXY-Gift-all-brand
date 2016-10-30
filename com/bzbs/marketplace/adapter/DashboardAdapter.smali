.class public Lcom/bzbs/marketplace/adapter/DashboardAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DashboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;

.field b:Landroid/support/v4/app/FragmentManager;

.field private c:Ljava/lang/String;

.field private final d:Landroid/view/LayoutInflater;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/app/Activity;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/support/v7/widget/RecyclerView;

.field private i:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Landroid/support/v4/app/FragmentManager;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;",
            ">;",
            "Landroid/support/v4/app/FragmentManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->c:Ljava/lang/String;

    .line 59
    if-nez p2, :cond_1c

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->e:Ljava/util/ArrayList;

    .line 63
    :goto_11
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->f:Landroid/app/Activity;

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->d:Landroid/view/LayoutInflater;

    .line 65
    iput-object p3, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->b:Landroid/support/v4/app/FragmentManager;

    .line 66
    return-void

    .line 61
    :cond_1c
    iput-object p2, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->e:Ljava/util/ArrayList;

    goto :goto_11
.end method

.method static synthetic a(Lcom/bzbs/marketplace/adapter/DashboardAdapter;)Landroid/view/LayoutInflater;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->d:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic a(Lcom/bzbs/marketplace/adapter/DashboardAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItemCustom;
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItemCustom;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;
    .registers 2

    .prologue
    .line 98
    check-cast p1, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;

    return-object p1
.end method

.method private a(I)Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    return-object v0
.end method

.method private a(JLandroid/support/v4/view/ViewPager;)V
    .registers 11

    .prologue
    .line 209
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/bzbs/marketplace/adapter/DashboardAdapter$2;

    invoke-direct {v1, p0, p3}, Lcom/bzbs/marketplace/adapter/DashboardAdapter$2;-><init>(Lcom/bzbs/marketplace/adapter/DashboardAdapter;Landroid/support/v4/view/ViewPager;)V

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 220
    return-void
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItemCustom;
    .registers 2

    .prologue
    .line 106
    check-cast p1, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItemCustom;

    return-object p1
.end method

.method static synthetic b(Lcom/bzbs/marketplace/adapter/DashboardAdapter;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/bzbs/marketplace/adapter/DashboardAdapter;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->f:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/bzbs/marketplace/adapter/DashboardAdapter;)Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->g:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 77
    return-void
.end method

.method public a(Ljava/util/ArrayList;Landroid/support/v7/widget/RecyclerView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->e:Ljava/util/ArrayList;

    .line 70
    iput-object p2, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->h:Landroid/support/v7/widget/RecyclerView;

    .line 72
    invoke-virtual {p0}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->notifyDataSetChanged()V

    .line 73
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 2

    .prologue
    .line 81
    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 15

    .prologue
    const-wide/16 v10, 0x1388

    const/4 v8, 0x0

    .line 111
    invoke-direct {p0, p2}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->a(I)Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    move-result-object v3

    .line 113
    sget v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->z:I

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->f:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual {v0, v2}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->a(F)I

    move-result v0

    sub-int v4, v1, v0

    .line 114
    instance-of v0, p1, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;

    if-eqz v0, :cond_1aa

    .line 115
    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getSubcampaigndetails()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11d

    .line 116
    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getSize()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getSize()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "small"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 119
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    div-int/lit8 v1, v4, 0x3

    invoke-direct {v0, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 120
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;->viewPager:Landroid/support/v4/view/ViewPager;

    int-to-double v4, v4

    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    div-double/2addr v4, v6

    double-to-int v4, v4

    neg-int v4, v4

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    move-object v1, v0

    .line 127
    :goto_65
    new-instance v4, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;

    iget-object v5, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->f:Landroid/app/Activity;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-direct {v4, v5, v0, v2}, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;-><init>(Landroid/app/Activity;Lcom/bzbs/marketplace/model/dashboard/DashboardModel;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->a:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;

    .line 128
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->a:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/PagerAdapter;)V

    .line 130
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 131
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->setClipChildren(Z)V

    .line 134
    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getSubcampaigndetails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 135
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->c:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getSubcampaigndetails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;->getCat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11d

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getSubcampaigndetails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;->getCat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->c:Ljava/lang/String;

    .line 137
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, v10, v11, v0}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->a(JLandroid/support/v4/view/ViewPager;)V

    .line 206
    :cond_11d
    :goto_11d
    return-void

    .line 121
    :cond_11e
    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getSize()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "medium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 122
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    div-int/lit8 v1, v4, 0x2

    invoke-direct {v0, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v1, v0

    goto/16 :goto_65

    .line 124
    :cond_13f
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v1, v4, 0x2

    div-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v1, v0

    goto/16 :goto_65

    .line 140
    :cond_14b
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->c:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getSubcampaigndetails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11d

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getSubcampaigndetails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->c:Ljava/lang/String;

    .line 142
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, v10, v11, v0}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->a(JLandroid/support/v4/view/ViewPager;)V

    goto/16 :goto_11d

    .line 147
    :cond_1aa
    instance-of v0, p1, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItemFragment;

    if-eqz v0, :cond_1be

    .line 148
    new-instance v0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;

    check-cast p1, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItemFragment;

    iget-object v1, p1, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItemFragment;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->f:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;-><init>(Landroid/view/View;Landroid/app/Activity;)V

    .line 149
    invoke-virtual {v0}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->a()V

    goto/16 :goto_11d

    .line 150
    :cond_1be
    instance-of v0, p1, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItemCustom;

    if-eqz v0, :cond_11d

    .line 151
    iget-object v6, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->f:Landroid/app/Activity;

    new-instance v0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;-><init>(Lcom/bzbs/marketplace/adapter/DashboardAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;II)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_11d
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-direct {p0, p2}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->a(I)Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    move-result-object v1

    .line 87
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->g:Landroid/view/ViewGroup;

    .line 88
    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getSubcampaigndetails()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 89
    new-instance v0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->d:Landroid/view/LayoutInflater;

    const v2, 0x7f04013a

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderPager;-><init>(Lcom/bzbs/marketplace/adapter/DashboardAdapter;Landroid/view/View;)V

    .line 93
    :goto_25
    return-object v0

    .line 90
    :cond_26
    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "configlist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 91
    new-instance v0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItemFragment;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->d:Landroid/view/LayoutInflater;

    const v2, 0x7f040148

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItemFragment;-><init>(Lcom/bzbs/marketplace/adapter/DashboardAdapter;Landroid/view/View;)V

    goto :goto_25

    .line 93
    :cond_5c
    new-instance v0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItemCustom;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->d:Landroid/view/LayoutInflater;

    const v2, 0x7f040139

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItemCustom;-><init>(Lcom/bzbs/marketplace/adapter/DashboardAdapter;Landroid/view/View;)V

    goto :goto_25
.end method
