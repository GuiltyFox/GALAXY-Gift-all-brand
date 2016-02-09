.class public Lic/buzzebeeslib/activity/MarketReviewList2Activity$ProcessActionLikeListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "MarketReviewList2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcessActionLikeListener"
.end annotation


# instance fields
.field private gIsLike:Z

.field private gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    .registers 4
    .param p2, "isLike"    # Z
    .param p3, "tagLike"    # Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    .prologue
    .line 1656
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    .line 1657
    iput-boolean p2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$ProcessActionLikeListener;->gIsLike:Z

    .line 1658
    iput-object p3, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    .line 1659
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$ProcessActionLikeListener;)Z
    .registers 2

    .prologue
    .line 1653
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$ProcessActionLikeListener;->gIsLike:Z

    return v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/MarketReviewList2Activity$ProcessActionLikeListener;)Lic/buzzebeeslib/bean/TagLikeCampaignReview;
    .registers 2

    .prologue
    .line 1654
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    return-object v0
.end method

.method static synthetic access$2(Lic/buzzebeeslib/activity/MarketReviewList2Activity$ProcessActionLikeListener;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    .registers 2

    .prologue
    .line 1651
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 1663
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

    .line 1665
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1666
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    new-instance v1, Lic/buzzebeeslib/activity/MarketReviewList2Activity$ProcessActionLikeListener$1;

    invoke-direct {v1, p0, p1, p2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$ProcessActionLikeListener$1;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$ProcessActionLikeListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1768
    :cond_30
    return-void
.end method
