.class public Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ImageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "CampaignDetailGiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAdapter"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field galImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/CampaignGallery;",
            ">;"
        }
    .end annotation
.end field

.field imageLayout:Landroid/view/View;

.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/CampaignGallery;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1792
    .local p3, "galImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/CampaignGallery;>;"
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ImageAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 1793
    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ImageAdapter;->context:Landroid/content/Context;

    .line 1794
    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ImageAdapter;->galImages:Ljava/util/ArrayList;

    .line 1795
    invoke-virtual {p1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ImageAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 1796
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 1845
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ImageAdapter;->galImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 10
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 1810
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ImageAdapter;->galImages:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/bean/CampaignGallery;

    .line 1812
    .local v2, "marketGalleryView":Lcom/bzbs/bean/CampaignGallery;
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ImageAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040021

    invoke-virtual {v4, v5, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1813
    .local v0, "imageLayout":Landroid/view/View;
    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ImageAdapter;->imageLayout:Landroid/view/View;

    .line 1814
    const v4, 0x7f10008a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1829
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v2}, Lcom/bzbs/bean/CampaignGallery;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v3

    .line 1836
    .local v3, "url_image_large":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ImageAdapter;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    const v5, 0x7f0202cd

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1838
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p1, v0, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 1839
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 1849
    const/4 v0, 0x0

    return v0
.end method
