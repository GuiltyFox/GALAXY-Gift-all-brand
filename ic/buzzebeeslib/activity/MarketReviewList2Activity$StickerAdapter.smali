.class public Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MarketReviewList2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StickerAdapter"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field galImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/StickerSet;",
            ">;"
        }
    .end annotation
.end field

.field imageLayout:Landroid/view/View;

.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/StickerSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2607
    .local p3, "galImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/StickerSet;>;"
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 2608
    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->context:Landroid/content/Context;

    .line 2609
    iput-object p3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->galImages:Ljava/util/ArrayList;

    .line 2610
    invoke-virtual {p1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 2611
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    .registers 2

    .prologue
    .line 2601
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 2655
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 2615
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->galImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 11
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x0

    .line 2625
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->galImages:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/buzzebeeslib/bean/StickerSet;

    .line 2627
    .local v3, "marketGalleryView":Lic/buzzebeeslib/bean/StickerSet;
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v5, Lic/buzzebeeslib/R$layout;->bz_sticker_pager_item:I

    invoke-virtual {v4, v5, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 2628
    .local v2, "imageLayout":Landroid/view/View;
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->imageLayout:Landroid/view/View;

    .line 2629
    sget v4, Lic/buzzebeeslib/R$id;->gridSticker:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 2630
    .local v1, "gridSticker":Landroid/widget/GridView;
    new-instance v0, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v4}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/buzzebeeslib/bean/StickerSet;

    iget-object v4, v4, Lic/buzzebeeslib/bean/StickerSet;->stickers:Ljava/util/ArrayList;

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v6}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$11(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v6

    invoke-direct {v0, v5, v4, v6}, Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/bitmapfun/util/ImageFetcher;)V

    .line 2632
    .local v0, "adapterSticker":Lic/buzzebeeslib/adapter/KeyboardStickerAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2634
    new-instance v4, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter$1;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter$1;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;)V

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2647
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p1, v2, v7}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 2648
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 2620
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
