.class Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MarketPlaceDashboardCampaignListAdapter.java"


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;

.field contentList:Landroid/support/v7/widget/CardView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10038c
    .end annotation
.end field

.field imageViewCover:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004a6
    .end annotation
.end field

.field tvSeemore:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004a7
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 97
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;

    .line 98
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 99
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 100
    return-void
.end method


# virtual methods
.method public a(ILcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;)V
    .registers 5

    .prologue
    .line 124
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->contentList:Landroid/support/v7/widget/CardView;

    new-instance v1, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList$1;-><init>(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;ILcom/bzbs/marketplace/listener/OnTabIFragmentItemListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    return-void
.end method

.method public a(Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;I)V
    .registers 7

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BZB Category-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;)Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->getName_en()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "View BZB Campaign Banner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v0, "BZB Marketplace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BZB Category-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;

    invoke-static {v2}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;)Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/menu/CampaignGroupModel;->getName_en()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , View BZB Campaign Banner , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getFullImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->b(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;)Landroid/app/Activity;

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

    const v1, 0x7f0201b4

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->imageViewCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 110
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->b(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->a(F)I

    .line 111
    sget v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->A:I

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->b(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const/high16 v2, 0x42100000    # 36.0f

    invoke-virtual {v0, v2}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->a(F)I

    move-result v0

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    .line 112
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v2, v0, 0x2

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 113
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->contentList:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->c(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_105

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;->c(Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_105

    .line 116
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->tvSeemore:Landroid/widget/TextView;

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 121
    :goto_104
    return-void

    .line 118
    :cond_105
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceDashboardCampaignListAdapter$ViewHolderList;->tvSeemore:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_104
.end method
