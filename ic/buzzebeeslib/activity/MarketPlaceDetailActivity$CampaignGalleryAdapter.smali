.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "MarketPlaceDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CampaignGalleryAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/CampaignGallery;",
            ">;"
        }
    .end annotation
.end field

.field private gInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
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
    .line 3269
    .local p3, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/CampaignGallery;>;"
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3270
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter;->gInflater:Landroid/view/LayoutInflater;

    .line 3271
    iput-object p3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter;->data:Ljava/util/ArrayList;

    .line 3272
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {p1, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$20(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/os/Handler;)V

    .line 3273
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 3276
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 3280
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 3284
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 3294
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lic/buzzebeeslib/bean/CampaignGallery;

    .line 3296
    .local v7, "gallery":Lic/buzzebeeslib/bean/CampaignGallery;
    const/4 v8, 0x0

    .line 3297
    .local v8, "holder":Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;
    move-object v11, p2

    .line 3299
    .local v11, "view":Landroid/view/View;
    if-eqz p2, :cond_14

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d4

    .line 3300
    :cond_14
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter;->gInflater:Landroid/view/LayoutInflater;

    sget v1, Lic/buzzebeeslib/R$layout;->bz_market_place_detail_gallery_row:I

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 3301
    new-instance v8, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;

    .end local v8    # "holder":Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;
    invoke-direct {v8, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter;)V

    .line 3302
    .restart local v8    # "holder":Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;
    sget v0, Lic/buzzebeeslib/R$id;->imgGalleryThumb:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v8, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;->imgCampaignGalleryThumb:Landroid/widget/ImageView;

    .line 3303
    sget v0, Lic/buzzebeeslib/R$id;->imgGallery:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v8, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;->imgCampaignGallery:Landroid/widget/ImageView;

    .line 3304
    sget v0, Lic/buzzebeeslib/R$id;->tvCaption:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;->tvCaption:Landroid/widget/TextView;

    .line 3305
    invoke-virtual {v11, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3311
    :goto_42
    :try_start_42
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/kit55p.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 3312
    .local v6, "font":Landroid/graphics/Typeface;
    iget-object v0, v8, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;->tvCaption:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_53} :catch_e4

    .line 3317
    .end local v6    # "font":Landroid/graphics/Typeface;
    :goto_53
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImageWidth:I
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$21(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)I

    move-result v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImageHeight:I
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$22(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)I

    move-result v1

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3318
    .local v10, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    const/4 v1, -0x1

    invoke-virtual {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3319
    iget-object v0, v8, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;->imgCampaignGalleryThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3320
    iget-object v0, v8, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;->imgCampaignGallery:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3336
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$16(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    invoke-virtual {v7}, Lic/buzzebeeslib/bean/CampaignGallery;->FullImageUrlThumb()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;->imgCampaignGalleryThumb:Landroid/widget/ImageView;

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 3337
    iget-object v0, v8, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;->imgCampaignGalleryThumb:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3338
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$16(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    invoke-virtual {v7}, Lic/buzzebeeslib/bean/CampaignGallery;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;->imgCampaignGallery:Landroid/widget/ImageView;

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 3340
    move-object v9, v8

    .line 3341
    .local v9, "holder_final":Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;
    iget-object v0, v8, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;->imgCampaignGalleryThumb:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$1;

    invoke-direct {v1, p0, v9}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter;Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3352
    iget-object v0, v8, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;->imgCampaignGallery:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$2;

    invoke-direct {v1, p0, v9}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$2;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter;Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3385
    iget-object v0, v7, Lic/buzzebeeslib/bean/CampaignGallery;->Caption:Ljava/lang/String;

    if-eqz v0, :cond_dc

    iget-object v0, v7, Lic/buzzebeeslib/bean/CampaignGallery;->Caption:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dc

    .line 3386
    iget-object v0, v8, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;->tvCaption:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3387
    iget-object v0, v8, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;->tvCaption:Landroid/widget/TextView;

    iget-object v1, v7, Lic/buzzebeeslib/bean/CampaignGallery;->Caption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3392
    :goto_d3
    return-object v11

    .line 3307
    .end local v9    # "holder_final":Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;
    .end local v10    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_d4
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "holder":Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;
    check-cast v8, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;

    .restart local v8    # "holder":Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;
    goto/16 :goto_42

    .line 3389
    .restart local v9    # "holder_final":Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;
    .restart local v10    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_dc
    iget-object v0, v8, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;->tvCaption:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d3

    .line 3313
    .end local v9    # "holder_final":Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter$ViewHolderMarketPlaceDetailGalleryRow;
    .end local v10    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_e4
    move-exception v0

    goto/16 :goto_53
.end method
