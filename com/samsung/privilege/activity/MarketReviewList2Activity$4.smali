.class Lcom/samsung/privilege/activity/MarketReviewList2Activity$4;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MarketReviewList2Activity;->doLikeAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

.field private final synthetic val$isLike:Z

.field private final synthetic val$layoutLike:Landroid/widget/RelativeLayout;

.field private final synthetic val$tagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Lcom/samsung/privilege/bean/TagLikeMarketReview;ZLandroid/widget/RelativeLayout;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$4;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$4;->val$tagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    iput-boolean p3, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$4;->val$isLike:Z

    iput-object p4, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$4;->val$layoutLike:Landroid/widget/RelativeLayout;

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 7
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v4, 0x1

    .line 637
    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$4;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$4;->val$tagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    # invokes: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->processLikeAction(Lcom/samsung/privilege/bean/TagLikeMarketReview;)V
    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$10(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Lcom/samsung/privilege/bean/TagLikeMarketReview;)V

    .line 638
    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$4;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    iget-boolean v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$4;->val$isLike:Z

    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$4;->val$tagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->doLike(ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V

    .line 640
    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$4;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040012

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 641
    .local v0, "likeClickAnimation2":Landroid/view/animation/Animation;
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 642
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 643
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 645
    iget-object v1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$4;->val$layoutLike:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 646
    new-instance v1, Lcom/samsung/privilege/activity/MarketReviewList2Activity$4$1;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$4;->val$layoutLike:Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/activity/MarketReviewList2Activity$4$1;-><init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity$4;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 662
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 667
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 671
    iget-object v0, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$4;->val$layoutLike:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 672
    return-void
.end method
