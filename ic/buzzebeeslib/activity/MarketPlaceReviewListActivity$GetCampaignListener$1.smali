.class Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener$1;
.super Ljava/lang/Object;
.source "MarketPlaceReviewListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener;

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 575
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gPbLoadingReview:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 576
    return-void
.end method
