.class Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$3;
.super Ljava/lang/Object;
.source "MarketReviewLikeListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->showWhoClickLike(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$3;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 202
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$3;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->pbLoadingList:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->access$3(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 203
    return-void
.end method
