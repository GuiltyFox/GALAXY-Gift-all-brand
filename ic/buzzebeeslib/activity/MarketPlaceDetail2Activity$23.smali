.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;
.super Ljava/lang/Object;
.source "MarketPlaceDetail2Activity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    .line 2928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    .registers 2

    .prologue
    .line 2928
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

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

    .line 2934
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$59(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2935
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$59(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2936
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$59(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2937
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$59(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2939
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->outToLeftAnimation()Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$60(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2940
    .local v0, "slideOut":Landroid/view/animation/Animation;
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2941
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2942
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2943
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2945
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$49(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2946
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$49(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$59(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2948
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$56(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2950
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$49(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23$1;

    invoke-direct {v2, p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2960
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$56(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23$2;

    invoke-direct {v2, p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23$2;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2975
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 2980
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 2984
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$49(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2985
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$56(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2986
    return-void
.end method
