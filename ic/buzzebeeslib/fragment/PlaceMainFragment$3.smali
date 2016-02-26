.class Lic/buzzebeeslib/fragment/PlaceMainFragment$3;
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
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/PlaceMainFragment$3;)Lic/buzzebeeslib/fragment/PlaceMainFragment;
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

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

    .line 317
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$20(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 318
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$20(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 319
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$20(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 320
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$20(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 322
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # invokes: Lic/buzzebeeslib/fragment/PlaceMainFragment;->outToLeftAnimation()Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$21(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 323
    .local v0, "slideOut":Landroid/view/animation/Animation;
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 324
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 325
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 326
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 328
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$10(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 329
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$10(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$20(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 331
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$17(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 333
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$10(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lic/buzzebeeslib/fragment/PlaceMainFragment$3$1;

    invoke-direct {v2, p0, v0}, Lic/buzzebeeslib/fragment/PlaceMainFragment$3$1;-><init>(Lic/buzzebeeslib/fragment/PlaceMainFragment$3;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$17(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Lic/buzzebeeslib/fragment/PlaceMainFragment$3$2;

    invoke-direct {v2, p0, v0}, Lic/buzzebeeslib/fragment/PlaceMainFragment$3$2;-><init>(Lic/buzzebeeslib/fragment/PlaceMainFragment$3;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 362
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 366
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$10(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$17(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 368
    return-void
.end method
