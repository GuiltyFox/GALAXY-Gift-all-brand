.class Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4$2;
.super Ljava/lang/Object;
.source "MarketPlaceReviewListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;

.field private final synthetic val$slideOut:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;Landroid/view/animation/Animation;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4$2;->val$slideOut:Landroid/view/animation/Animation;

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v2, 0x64

    .line 457
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$36(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 458
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4$2;->val$slideOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 460
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$26(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$36(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 461
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->access$33(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4$2;->val$slideOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 467
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->this$0:Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;->access$0(Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity$4;)Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    move-result-object v0

    const-string v1, "goto badge..."

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;->showToast(Ljava/lang/String;)V

    .line 468
    return-void
.end method
