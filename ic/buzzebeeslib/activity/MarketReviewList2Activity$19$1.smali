.class Lic/buzzebeeslib/activity/MarketReviewList2Activity$19$1;
.super Ljava/lang/Object;
.source "MarketReviewList2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;

.field private final synthetic val$slideOut:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;Landroid/view/animation/Animation;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19$1;->val$slideOut:Landroid/view/animation/Animation;

    .line 2794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v2, 0x64

    .line 2796
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$46(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2797
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19$1;->val$slideOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2799
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$36(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$46(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2800
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19$1;->this$1:Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;->this$0:Lic/buzzebeeslib/activity/MarketReviewList2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;->access$0(Lic/buzzebeeslib/activity/MarketReviewList2Activity$19;)Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewList2Activity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewList2Activity;->access$43(Lic/buzzebeeslib/activity/MarketReviewList2Activity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewList2Activity$19$1;->val$slideOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2801
    return-void
.end method
