.class final Lcom/bzbs/lib/survey/util/AnimationPoint$3;
.super Ljava/lang/Object;
.source "AnimationPoint.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPoint;->b(ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/animation/Animation;

.field final synthetic b:Landroid/widget/RelativeLayout;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Landroid/widget/ImageView;

.field final synthetic e:Landroid/widget/ImageView;

.field final synthetic f:Landroid/widget/ImageView;

.field final synthetic g:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 8

    .prologue
    .line 311
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->a:Landroid/view/animation/Animation;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->b:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->c:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->d:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->e:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->f:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->g:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 314
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 315
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 317
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 318
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 320
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->a:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bzbs/lib/survey/util/AnimationPoint$3$1;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/util/AnimationPoint$3$1;-><init>(Lcom/bzbs/lib/survey/util/AnimationPoint$3;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 342
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 343
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 345
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 346
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 348
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 349
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 351
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 352
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 353
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 358
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 363
    return-void
.end method
