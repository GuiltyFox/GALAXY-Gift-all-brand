.class Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener$2;
.super Ljava/lang/Object;
.source "MarketReviewLikeListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 245
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;->access$1(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity$MarketReviewLikeListener;)Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->pbLoadingList:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;->access$3(Lic/buzzebeeslib/activity/MarketReviewLikeListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 246
    return-void
.end method
