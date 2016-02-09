.class Lic/buzzebeeslib/fragment/PlaceMainFragment$4;
.super Ljava/lang/Object;
.source "PlaceMainFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/PlaceMainFragment;->PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/PlaceMainFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x4

    .line 375
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$10(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$17(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$10(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 379
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$17(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 381
    const/4 v0, 0x0

    sput-boolean v0, Lic/buzzebeeslib/LibData;->gIsAnimatingBadgeAlert:Z

    .line 382
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 387
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 392
    return-void
.end method
