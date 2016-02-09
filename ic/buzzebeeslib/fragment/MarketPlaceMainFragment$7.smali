.class Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$7;
.super Ljava/lang/Object;
.source "MarketPlaceMainFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->hideRightMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 434
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment$7;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->gLayoutMenuDynamic:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;->access$21(Lic/buzzebeeslib/fragment/MarketPlaceMainFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 435
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 440
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 445
    return-void
.end method
