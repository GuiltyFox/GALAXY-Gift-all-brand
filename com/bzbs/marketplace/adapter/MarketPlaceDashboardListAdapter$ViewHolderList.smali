.class Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MarketPlaceDashboardListAdapter.java"


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

.field contentItemList:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004e0
    .end annotation
.end field

.field contentList:Landroid/support/v7/widget/CardView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1003c3
    .end annotation
.end field

.field imageViewCover:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004de
    .end annotation
.end field

.field recyclerViewMarketPlaceList:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004da
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 104
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

    .line 105
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 106
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 107
    return-void
.end method


# virtual methods
.method public a(ILcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;)V
    .registers 5

    .prologue
    .line 156
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;->contentItemList:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$2;-><init>(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;ILcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    return-void
.end method

.method public a(Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;I)V
    .registers 9

    .prologue
    const v5, 0x7f0201c9

    const/4 v4, 0x0

    .line 111
    const-string/jumbo v0, "BZB Marketplace"

    const-string/jumbo v1, "View BZB Category Banner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->getName_en()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v0, "BZB Marketplace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "View BZB Category Banner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->getName_en()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->getImage_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_banner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->c()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->a()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->b(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;->imageViewCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 118
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->a(F)I

    move-result v1

    .line 119
    sget v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->A:I

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const/high16 v3, 0x42100000    # 36.0f

    invoke-virtual {v0, v3}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->a(F)I

    move-result v0

    sub-int v0, v2, v0

    .line 120
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v3, v0, 0x5

    div-int/lit8 v3, v3, 0x13

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 121
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;->contentList:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

    invoke-static {v2}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, v4, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 124
    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;->recyclerViewMarketPlaceList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 125
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;->recyclerViewMarketPlaceList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, v4, v1, v4}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 126
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->A:I

    sget v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->A:I

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 127
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;->recyclerViewMarketPlaceList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->getCampaigns()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;)V

    .line 129
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;->recyclerViewMarketPlaceList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 131
    new-instance v1, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList$1;-><init>(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardListAdapter$ViewHolderList;Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;I)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->a(Lcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;)V

    .line 153
    return-void
.end method
