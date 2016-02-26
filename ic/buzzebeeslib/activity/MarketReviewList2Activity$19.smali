.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity;->PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    .line 2773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    .registers 2

    .prologue
    .line 2773
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 10
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const-wide/32 v6, 0xea60

    const-wide/16 v4, 0x1f4

    const/4 v2, 0x1

    .line 2778
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$46(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2779
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$46(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2780
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$46(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2781
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$46(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2783
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # invokes: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->outToLeftAnimation()Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$47(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2784
    .local v0, "slideOut":Landroid/view/animation/Animation;
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2785
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2786
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2787
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2789
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$36(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2790
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$36(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$46(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2792
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$43(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2794
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$36(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19$1;

    invoke-direct {v2, p0, v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19$1;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2804
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$43(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19$2;

    invoke-direct {v2, p0, v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19$2;-><init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2819
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 2824
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 2828
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$36(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2829
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$43(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2830
    return-void
.end method
