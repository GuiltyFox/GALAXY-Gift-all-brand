.class Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    .line 1445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 1447
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gIvLoadingPrevious:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$20(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1448
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gIvLoadingPrevious:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$20(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1450
    :cond_1c
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gPbLoadingReview:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$21(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1451
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gPbLoadingPrevious:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$22(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 1452
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gPbLoadingPrevious:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$22(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1454
    :cond_42
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gTvPreviousReview:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$23(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 1455
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gTvPreviousReview:Landroid/widget/TextView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$23(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$string;->market_review_of_review_previous:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1458
    :cond_7c
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gLayoutRootPrevious:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$24(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_a1

    .line 1459
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gIsHaveMoreData:Z
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$25(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 1460
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gLayoutRootPrevious:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$24(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1466
    :cond_a1
    :goto_a1
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->gLoadMore:Z
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 1467
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mListState:Landroid/os/Parcelable;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$26(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_cc

    .line 1468
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$27(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mListState:Landroid/os/Parcelable;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$26(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1469
    :cond_cc
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$27(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mListPosition:I
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$17(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)I

    move-result v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->mItemPosition:I
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$28(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1471
    :cond_ed
    return-void

    .line 1462
    :cond_ee
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gLayoutRootPrevious:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$24(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_a1
.end method
