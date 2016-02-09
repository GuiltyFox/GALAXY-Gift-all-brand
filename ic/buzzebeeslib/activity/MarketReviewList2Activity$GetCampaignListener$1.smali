.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener$1;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener;

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 596
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$GetCampaignListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gPbLoadingReview:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$2(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 597
    return-void
.end method
