.class public Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MarketPlaceDetail2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
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
            "Lic/buzzebeeslib/bean/CampaignGallery;",
            ">;"
        }
    .end annotation
.end field

.field imageLayout:Landroid/view/View;

.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/CampaignGallery;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4354
    .local p3, "galImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/CampaignGallery;>;"
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 4355
    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;->context:Landroid/content/Context;

    .line 4356
    iput-object p3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;->galImages:Ljava/util/ArrayList;

    .line 4357
    invoke-virtual {p1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 4358
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 4413
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 4362
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;->galImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 11
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 4372
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;->galImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lic/buzzebeeslib/bean/CampaignGallery;

    .line 4374
    .local v7, "marketGalleryView":Lic/buzzebeeslib/bean/CampaignGallery;
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lic/buzzebeeslib/R$layout;->bz_campaign_detail_bzbs_pager_image:I

    invoke-virtual {v0, v3, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 4375
    .local v6, "imageLayout":Landroid/view/View;
    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;->imageLayout:Landroid/view/View;

    .line 4376
    sget v0, Lic/buzzebeeslib/R$id;->image:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 4378
    .local v2, "imageView":Landroid/widget/ImageView;
    const/4 v1, 0x0

    .line 4379
    .local v1, "img_url":Ljava/lang/String;
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_68

    .line 4380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lic/buzzebeeslib/bean/CampaignGallery;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->ModifyDate:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4389
    :cond_4a
    :goto_4a
    invoke-virtual {v2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v3, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter$1;

    invoke-direct {v3, p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4402
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$16(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    const/4 v3, 0x0

    sget v4, Lic/buzzebeeslib/R$drawable;->bz_image_loading_600x400:I

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 4404
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p1, v6, v5}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 4406
    return-object v6

    .line 4381
    .restart local p1    # "container":Landroid/view/ViewGroup;
    :cond_68
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x3

    if-ne v0, v3, :cond_97

    .line 4382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lic/buzzebeeslib/bean/CampaignGallery;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->ModifyDate:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4383
    goto :goto_4a

    :cond_97
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x2

    if-ne v0, v3, :cond_c6

    .line 4384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lic/buzzebeeslib/bean/CampaignGallery;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->ModifyDate:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4385
    goto :goto_4a

    :cond_c6
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4a

    .line 4386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lic/buzzebeeslib/bean/CampaignGallery;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->ModifyDate:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4a
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 4367
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
