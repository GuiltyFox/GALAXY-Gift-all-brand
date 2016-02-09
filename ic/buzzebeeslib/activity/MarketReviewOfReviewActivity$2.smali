.class Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$2;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    .line 447
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

    .line 458
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gMarketReviews:Ljava/util/ArrayList;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3c

    .line 460
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$27(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$33(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Landroid/os/Parcelable;)V

    .line 462
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$27(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$18(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;I)V

    .line 464
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$27(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 465
    .local v0, "itemView":Landroid/view/View;
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    if-nez v0, :cond_3d

    :goto_39
    invoke-static {v2, v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$34(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;I)V

    .line 467
    .end local v0    # "itemView":Landroid/view/View;
    :cond_3c
    return-void

    .line 465
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
    .line 450
    const/4 v0, 0x2

    if-ne p2, v0, :cond_e

    .line 451
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$30(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setPauseWork(Z)V

    .line 455
    :goto_d
    return-void

    .line 453
    :cond_e
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$2;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$30(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setPauseWork(Z)V

    goto :goto_d
.end method
