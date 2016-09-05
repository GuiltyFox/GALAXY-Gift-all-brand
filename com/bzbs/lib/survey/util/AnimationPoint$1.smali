.class final Lcom/bzbs/lib/survey/util/AnimationPoint$1;
.super Ljava/lang/Object;
.source "AnimationPoint.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPoint;->a(ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Landroid/widget/ImageView;

.field final synthetic e:Landroid/widget/ImageView;

.field final synthetic f:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 7

    .prologue
    .line 83
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->a:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->c:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->d:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->e:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->f:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 86
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a()Landroid/view/animation/Animation;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 89
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 90
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 92
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 93
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 95
    new-instance v1, Lcom/bzbs/lib/survey/util/AnimationPoint$1$1;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/util/AnimationPoint$1$1;-><init>(Lcom/bzbs/lib/survey/util/AnimationPoint$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 117
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 118
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 120
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 121
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 123
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 124
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 126
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 127
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 128
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 133
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 138
    return-void
.end method
