.class Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    .line 1270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 1272
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gIvLoadingPrevious:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$19(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1273
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gIvLoadingPrevious:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$19(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1275
    :cond_1c
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gPbLoadingReview:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$20(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1276
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gPbLoadingPrevious:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$21(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 1277
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gPbLoadingPrevious:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$21(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1279
    :cond_42
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTvPreviousReview:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$22(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 1280
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gTvPreviousReview:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$22(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v2

    const v3, 0x7f0a010a

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1283
    :cond_7d
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gLayoutRootPrevious:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$23(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_a2

    .line 1284
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gIsHaveMoreData:Z
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$24(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 1285
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gLayoutRootPrevious:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$23(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1291
    :cond_a2
    :goto_a2
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->gLoadMore:Z
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$0(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 1292
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mListState:Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$25(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_cd

    .line 1293
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$26(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mListState:Landroid/os/Parcelable;
    invoke-static {v1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$25(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1294
    :cond_cd
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gListMarketReview:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$26(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mListPosition:I
    invoke-static {v1}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$16(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v2

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->mItemPosition:I
    invoke-static {v2}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$27(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1296
    :cond_ee
    return-void

    .line 1287
    :cond_ef
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener$2;->this$1:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;->access$1(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$GetReviewOfReviewRequestListener;)Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->gLayoutRootPrevious:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->access$23(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_a2
.end method
