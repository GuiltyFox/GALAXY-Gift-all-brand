.class Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$6;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->doLike(Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

.field private final synthetic val$tagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$6;->val$tagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 834
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$6;->val$tagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    iget-object v0, v0, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->campaignReview:Lic/buzzebeeslib/bean/CampaignReview;

    iget-boolean v0, v0, Lic/buzzebeeslib/bean/CampaignReview;->IsLiked:Z

    if-nez v0, :cond_11

    .line 835
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    const/4 v1, 0x1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$6;->val$tagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    # invokes: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->actionLike(ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$36(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    .line 839
    :goto_10
    return-void

    .line 837
    :cond_11
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$6;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$6;->val$tagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    # invokes: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->actionLike(ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$36(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    goto :goto_10
.end method
