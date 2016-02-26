.class Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;
.super Ljava/lang/Object;
.source "MarketPlaceReviewListActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

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

    .line 429
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$36(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 430
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$36(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 431
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$36(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 432
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$36(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 434
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->outToLeftAnimation()Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$37(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 435
    .local v0, "slideOut":Landroid/view/animation/Animation;
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 436
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 437
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 438
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 440
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$26(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 441
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$26(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$36(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 443
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$33(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 445
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$26(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4$1;

    invoke-direct {v2, p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$33(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4$2;

    invoke-direct {v2, p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4$2;-><init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 475
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 479
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$26(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$33(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 481
    return-void
.end method
