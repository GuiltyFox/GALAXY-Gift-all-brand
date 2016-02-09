.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetail2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;

.field private final synthetic val$slideOut:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;Landroid/view/animation/Animation;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23$1;->val$slideOut:Landroid/view/animation/Animation;

    .line 2944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v1, 0x64

    .line 2946
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$58(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2947
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23$1;->val$slideOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2949
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$48(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$58(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2950
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$55(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23$1;->val$slideOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2951
    return-void
.end method
