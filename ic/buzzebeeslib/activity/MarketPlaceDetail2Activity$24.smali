.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$24;
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
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$24;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    .line 2990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x4

    .line 2993
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$24;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$49(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2994
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$24;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$56(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2996
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$24;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$49(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2997
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$24;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$56(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 2999
    const/4 v0, 0x0

    sput-boolean v0, Lic/buzzebeeslib/LibData;->gIsAnimatingBadgeAlert:Z

    .line 3000
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3005
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3010
    return-void
.end method
