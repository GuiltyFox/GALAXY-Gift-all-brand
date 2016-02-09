.class Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12$2;
.super Ljava/lang/Object;
.source "MarketReviewOfReviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;

.field private final synthetic val$slideOut:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;Landroid/view/animation/Animation;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12$2;->val$slideOut:Landroid/view/animation/Animation;

    .line 2050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v1, 0x64

    .line 2052
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$49(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2053
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12$2;->val$slideOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2055
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$39(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$49(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2056
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->access$46(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12$2;->val$slideOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2062
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12$2;->this$1:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;

    # getter for: Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;->this$0:Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;->access$0(Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity$12;)Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-result-object v0

    const-string v1, "goto badge..."

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;->showToast(Ljava/lang/String;)V

    .line 2063
    return-void
.end method
