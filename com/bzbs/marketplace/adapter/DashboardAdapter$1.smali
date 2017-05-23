.class Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/adapter/DashboardAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic b:Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/bzbs/marketplace/adapter/DashboardAdapter;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/DashboardAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;II)V
    .registers 6

    .prologue
    .line 151
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->e:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

    iput-object p2, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->b:Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    iput p4, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->c:I

    iput p5, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const v10, 0x7f0400d4

    const/4 v9, 0x4

    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->e:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->a(Lcom/bzbs/marketplace/adapter/DashboardAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItemCustom;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItemCustom;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v1, v2

    .line 158
    :goto_13
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->b:Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_298

    .line 159
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->e:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->a(Lcom/bzbs/marketplace/adapter/DashboardAdapter;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v10, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 160
    new-instance v5, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItem;

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->e:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

    invoke-direct {v5, v0, v4}, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItem;-><init>(Lcom/bzbs/marketplace/adapter/DashboardAdapter;Landroid/view/View;)V

    .line 162
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->b:Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getSize()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "small"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_231

    .line 163
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->c:I

    div-int/lit8 v3, v3, 0x2

    iget v6, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->c:I

    div-int/lit8 v6, v6, 0x3

    invoke-direct {v0, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v0

    .line 170
    :goto_58
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->b:Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getImage_url()Ljava/lang/String;

    move-result-object v6

    .line 171
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->b:Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getLine1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 172
    iget-object v0, v5, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItem;->textViewLine:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    :cond_83
    iget-object v7, v5, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItem;->textViewLine:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->e:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->b(Lcom/bzbs/marketplace/adapter/DashboardAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v8, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->d:I

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getLine1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->e:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->c(Lcom/bzbs/marketplace/adapter/DashboardAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->c()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->a()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v6, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v6, v5, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItem;->imageViewCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 176
    iget-object v0, v5, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItem;->contentViewpager:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->b:Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    .line 179
    iget-object v5, v5, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItem;->contentViewpager:Landroid/support/v7/widget/CardView;

    new-instance v6, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1$1;

    invoke-direct {v6, p0, v0}, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1$1;-><init>(Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;Lcom/bzbs/marketplace/model/dashboard/DashboardModel;)V

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->e:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

    iget-object v5, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-static {v0, v5}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->a(Lcom/bzbs/marketplace/adapter/DashboardAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItemCustom;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItemCustom;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->b:Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_128

    .line 190
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->e:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->a(Lcom/bzbs/marketplace/adapter/DashboardAdapter;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v4, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->e:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

    invoke-static {v4}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->d(Lcom/bzbs/marketplace/adapter/DashboardAdapter;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v0, v10, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 191
    new-instance v4, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItem;

    iget-object v5, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->e:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

    invoke-direct {v4, v5, v0}, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItem;-><init>(Lcom/bzbs/marketplace/adapter/DashboardAdapter;Landroid/view/View;)V

    .line 192
    iget-object v5, v4, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItem;->textViewLine:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v4, v4, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItem;->contentViewpager:Landroid/support/v7/widget/CardView;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v3, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->e:Lcom/bzbs/marketplace/adapter/DashboardAdapter;

    iget-object v4, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-static {v3, v4}, Lcom/bzbs/marketplace/adapter/DashboardAdapter;->a(Lcom/bzbs/marketplace/adapter/DashboardAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItemCustom;

    move-result-object v3

    iget-object v3, v3, Lcom/bzbs/marketplace/adapter/DashboardAdapter$ViewHolderItemCustom;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 197
    :cond_128
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->b:Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "campaign"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a5

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->b:Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "bzbs_campaign"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a5

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->b:Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "bzbs_campaign_ads"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a5

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->b:Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "cat"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a5

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->b:Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "bzbs_cat"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27e

    .line 198
    :cond_1a5
    const-string/jumbo v3, "BZB Marketplace"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "View Dashboard "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->b:Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_268

    const-string/jumbo v0, "Category"

    :goto_1d0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->b:Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26d

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->b:Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getCat()Ljava/lang/String;

    move-result-object v0

    :goto_206
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->b:Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getGa_label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :goto_22c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_13

    .line 164
    :cond_231
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->b:Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getSize()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "medium"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_258

    .line 165
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->c:I

    iget v6, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->c:I

    div-int/lit8 v6, v6, 0x2

    invoke-direct {v0, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v0

    goto/16 :goto_58

    .line 167
    :cond_258
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->c:I

    iget v6, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->c:I

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x3

    invoke-direct {v0, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v0

    goto/16 :goto_58

    .line 198
    :cond_268
    const-string/jumbo v0, "Campaign"

    goto/16 :goto_1d0

    :cond_26d
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->b:Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_206

    .line 200
    :cond_27e
    const-string/jumbo v3, "BZB Marketplace"

    const-string/jumbo v4, "View Dashboard Banner"

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/DashboardAdapter$1;->b:Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->getListDashboard()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getGa_label()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22c

    .line 203
    :cond_298
    return-void
.end method
