.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter$1;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;

    .line 2634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 2637
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lic/buzzebeeslib/util/StickerUtil;->STICKER_SETS(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->pagerSticker:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$17(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/StickerSet;

    iget-object v0, v0, Lic/buzzebeeslib/bean/StickerSet;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lic/buzzebeeslib/bean/Sticker;

    .line 2638
    .local v6, "sticker":Lic/buzzebeeslib/bean/Sticker;
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgSticker:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$18(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2641
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$11(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    iget-object v1, v6, Lic/buzzebeeslib/bean/Sticker;->PictureUrl:Ljava/lang/String;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgSticker:Landroid/widget/ImageView;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$18(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 2642
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/util/async/PostData;

    invoke-direct {v1}, Lic/buzzebeeslib/util/async/PostData;-><init>()V

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$19(Lic/buzzebeeslib/activity/MarketReviewList2Activity;Lic/buzzebeeslib/util/async/PostData;)V

    .line 2643
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$StickerAdapter;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->contentMedia:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$20(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2644
    return-void
.end method
