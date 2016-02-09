.class Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$7;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;->doLike(Lcom/samsung/privilege/bean/TagLikeMarketReview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

.field private final synthetic val$tagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;Lcom/samsung/privilege/bean/TagLikeMarketReview;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$7;->this$0:Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$7;->val$tagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewOfReviewActivity$7;->val$tagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iget-object v0, v0, Lcom/samsung/privilege/bean/TagLikeMarketReview;->marketReview:Lcom/samsung/privilege/bean/MarketReview;

    iget-boolean v0, v0, Lcom/samsung/privilege/bean/MarketReview;->IsLiked:Z

    .line 806
    return-void
.end method
