.class Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;
.super Ljava/lang/Object;
.source "DashboardImagePagerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

.field final synthetic b:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$ViewHolder;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;Lcom/bzbs/marketplace/model/dashboard/DashboardModel;Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$ViewHolder;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 6

    .prologue
    .line 53
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->e:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;

    iput-object p2, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->a:Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    iput-object p3, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->b:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$ViewHolder;

    iput-object p4, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->c:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 57
    sget v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->A:I

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->e:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;->a(Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual {v0, v2}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->a(F)I

    move-result v0

    sub-int/2addr v1, v0

    .line 58
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->e:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;->b(Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "small"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 59
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 66
    :goto_29
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->a:Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getLine1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 67
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->b:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$ViewHolder;

    iget-object v1, v1, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$ViewHolder;->textViewLine:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    :cond_3d
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->b:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$ViewHolder;

    iget-object v1, v1, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$ViewHolder;->textViewLine:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->a:Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getLine1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->e:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;->a(Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->a:Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getImage_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    const v2, 0x7f0201b4

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->c()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->b:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$ViewHolder;

    iget-object v2, v2, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$ViewHolder;->imageViewCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 71
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->b:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$ViewHolder;

    iget-object v1, v1, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$ViewHolder;->contentViewpager:Landroid/support/v7/widget/CardView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->b:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$ViewHolder;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$ViewHolder;->contentViewpager:Landroid/support/v7/widget/CardView;

    new-instance v1, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1$1;-><init>(Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->a:Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d4

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->a:Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d4

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->a:Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_campaign_ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d4

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->a:Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d4

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->a:Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16c

    .line 81
    :cond_d4
    const-string/jumbo v1, "BZB Marketplace"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "View Dashboard "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->a:Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_161

    const-string/jumbo v0, "Category"

    :goto_f5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->a:Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_165

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->a:Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getCat()Ljava/lang/String;

    move-result-object v0

    :goto_117
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->a:Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getGa_label()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_133
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->c:Landroid/view/ViewGroup;

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->d:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 87
    return-void

    .line 60
    :cond_13e
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->e:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;->b(Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "medium"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_156

    .line 61
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    div-int/lit8 v2, v1, 0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_29

    .line 63
    :cond_156
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v2, v1, 0x2

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_29

    .line 81
    :cond_161
    const-string/jumbo v0, "Campaign"

    goto :goto_f5

    :cond_165
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->a:Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_117

    .line 83
    :cond_16c
    const-string/jumbo v0, "BZB Marketplace"

    const-string/jumbo v1, "View Dashboard Banner"

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$1;->a:Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->getGa_label()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_133
.end method
