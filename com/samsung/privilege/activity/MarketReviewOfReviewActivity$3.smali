.class Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$3;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$3;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 9
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 419
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$3;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$2(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3c

    .line 421
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$3;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$3;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$26(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$32(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Landroid/os/Parcelable;)V

    .line 423
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$3;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$3;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$26(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$17(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;I)V

    .line 425
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$3;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$26(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 426
    .local v0, "itemView":Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$3;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    if-nez v0, :cond_3d

    :goto_39
    invoke-static {v2, v1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$33(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;I)V

    .line 428
    .end local v0    # "itemView":Landroid/view/View;
    :cond_3c
    return-void

    .line 426
    .restart local v0    # "itemView":Landroid/view/View;
    :cond_3d
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_39
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 411
    const/4 v0, 0x2

    if-ne p2, v0, :cond_e

    .line 412
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$3;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$30(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setPauseWork(Z)V

    .line 416
    :goto_d
    return-void

    .line 414
    :cond_e
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$3;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$30(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setPauseWork(Z)V

    goto :goto_d
.end method
