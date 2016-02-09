.class Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener$3;
.super Ljava/lang/Object;
.source "MarketPlaceReviewListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener$3;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;

    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 810
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener$3;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;->access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetMarketReviewRequestListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gPbLoadingReview:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 811
    return-void
.end method
