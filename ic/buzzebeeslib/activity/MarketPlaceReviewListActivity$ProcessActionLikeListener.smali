.class public Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "MarketPlaceReviewListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcessActionLikeListener"
.end annotation


# instance fields
.field private gIsLike:Z

.field private gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    .registers 4
    .param p2, "isLike"    # Z
    .param p3, "tagLike"    # Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    .prologue
    .line 1276
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    .line 1277
    iput-boolean p2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gIsLike:Z

    .line 1278
    iput-object p3, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    .line 1279
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Z
    .registers 2

    .prologue
    .line 1273
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gIsLike:Z

    return v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    .registers 2

    .prologue
    .line 1274
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    return-object v0
.end method

.method static synthetic access$2(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    .registers 2

    .prologue
    .line 1271
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 1283
    const-string v0, "buzzebees.MarketReview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(ProcessActionLikeListener|onComplete)response={"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1286
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;

    invoke-direct {v1, p0, p1, p2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$ProcessActionLikeListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1388
    :cond_30
    return-void
.end method
