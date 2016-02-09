.class Lcom/samsung/privilege/activity/MarketReviewList2Activity$6;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MarketReviewList2Activity;->doLike(ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

.field private final synthetic val$isLike:Z

.field private final synthetic val$tagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity;ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$6;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    iput-boolean p2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$6;->val$isLike:Z

    iput-object p3, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$6;->val$tagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$6;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$6;->val$isLike:Z

    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$6;->val$tagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    # invokes: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->actionLike(ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$19(Lcom/samsung/privilege/activity/MarketReviewList2Activity;ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V

    .line 1046
    return-void
.end method
