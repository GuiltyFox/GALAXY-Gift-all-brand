.class final Lcom/bzbs/lib/survey/util/AnimationPoint$3;
.super Ljava/lang/Object;
.source "AnimationPoint.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPoint;->PlayPointAnimationFade(ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fadeOut:Landroid/view/animation/Animation;

.field final synthetic val$pImgCash1:Landroid/widget/ImageView;

.field final synthetic val$pImgCash2:Landroid/widget/ImageView;

.field final synthetic val$pImgCash3:Landroid/widget/ImageView;

.field final synthetic val$pImgCash4:Landroid/widget/ImageView;

.field final synthetic val$pImgComma1:Landroid/widget/ImageView;

.field final synthetic val$pLayoutRoot:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 8

    .prologue
    .line 311
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->val$fadeOut:Landroid/view/animation/Animation;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->val$pLayoutRoot:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->val$pImgCash1:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->val$pImgCash2:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->val$pImgCash3:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->val$pImgCash4:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->val$pImgComma1:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 8
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v5, 0x1

    .line 314
    iget-object v4, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->val$fadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 315
    iget-object v4, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->val$fadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 317
    iget-object v4, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->val$pLayoutRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 318
    iget-object v4, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->val$pLayoutRoot:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->val$fadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 320
    iget-object v4, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->val$fadeOut:Landroid/view/animation/Animation;

    new-instance v5, Lcom/bzbs/lib/survey/util/AnimationPoint$3$1;

    invoke-direct {v5, p0}, Lcom/bzbs/lib/survey/util/AnimationPoint$3$1;-><init>(Lcom/bzbs/lib/survey/util/AnimationPoint$3;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 342
    iget-object v4, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->val$pImgCash1:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 343
    .local v0, "frameAnimation1":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 345
    iget-object v4, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->val$pImgCash2:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 346
    .local v1, "frameAnimation2":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 348
    iget-object v4, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->val$pImgCash3:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 349
    .local v2, "frameAnimation3":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 351
    iget-object v4, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->val$pImgCash4:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    .line 352
    .local v3, "frameAnimation4":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 353
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 358
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 363
    return-void
.end method
