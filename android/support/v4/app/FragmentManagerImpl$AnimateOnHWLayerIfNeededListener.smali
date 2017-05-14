.class Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private a:Landroid/view/animation/Animation$AnimationListener;

.field private b:Z

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/animation/Animation;)V
    .registers 3

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    if-eqz p1, :cond_7

    if-nez p2, :cond_8

    .line 441
    :cond_7
    :goto_7
    return-void

    .line 440
    :cond_8
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->c:Landroid/view/View;

    goto :goto_7
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V
    .registers 5

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    if-eqz p1, :cond_7

    if-nez p2, :cond_8

    .line 451
    :cond_7
    :goto_7
    return-void

    .line 448
    :cond_8
    iput-object p3, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 449
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->c:Landroid/view/View;

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->b:Z

    goto :goto_7
.end method

.method static synthetic a(Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;)Landroid/view/View;
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->c:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5

    .prologue
    .line 464
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->c:Landroid/view/View;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->b:Z

    if-eqz v0, :cond_20

    .line 475
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->c:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->G(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Landroid/support/v4/os/BuildCompat;->a()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 476
    :cond_16
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->c:Landroid/view/View;

    new-instance v1, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1;

    invoke-direct {v1, p0}, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1;-><init>(Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 486
    :cond_20
    :goto_20
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->a:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_29

    .line 487
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->a:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 489
    :cond_29
    return-void

    .line 483
    :cond_2a
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->c:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    goto :goto_20
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 3

    .prologue
    .line 493
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->a:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_9

    .line 494
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->a:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 496
    :cond_9
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    .prologue
    .line 456
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->a:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_9

    .line 457
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->a:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 459
    :cond_9
    return-void
.end method
