.class final Lcom/bzbs/lib/survey/util/AnimationPoint$1;
.super Ljava/lang/Object;
.source "AnimationPoint.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPoint;->PlayPointAnimation(ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pImgCash1:Landroid/widget/ImageView;

.field final synthetic val$pImgCash2:Landroid/widget/ImageView;

.field final synthetic val$pImgCash3:Landroid/widget/ImageView;

.field final synthetic val$pImgCash4:Landroid/widget/ImageView;

.field final synthetic val$pImgComma1:Landroid/widget/ImageView;

.field final synthetic val$pLayoutRoot:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 7

    .prologue
    .line 83
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->val$pLayoutRoot:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->val$pImgCash1:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->val$pImgCash2:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->val$pImgCash3:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->val$pImgCash4:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->val$pImgComma1:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 10
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v5, 0x1

    .line 86
    # invokes: Lcom/bzbs/lib/survey/util/AnimationPoint;->outToTopAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPoint;->access$000()Landroid/view/animation/Animation;

    move-result-object v0

    .line 87
    .local v0, "animationOutToTop":Landroid/view/animation/Animation;
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 88
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 89
    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 90
    const-wide/16 v6, 0x3e8

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 92
    iget-object v5, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->val$pLayoutRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 93
    iget-object v5, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->val$pLayoutRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 95
    new-instance v5, Lcom/bzbs/lib/survey/util/AnimationPoint$1$1;

    invoke-direct {v5, p0}, Lcom/bzbs/lib/survey/util/AnimationPoint$1$1;-><init>(Lcom/bzbs/lib/survey/util/AnimationPoint$1;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 117
    iget-object v5, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->val$pImgCash1:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 118
    .local v1, "frameAnimation1":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 120
    iget-object v5, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->val$pImgCash2:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 121
    .local v2, "frameAnimation2":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 123
    iget-object v5, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->val$pImgCash3:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    .line 124
    .local v3, "frameAnimation3":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 126
    iget-object v5, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->val$pImgCash4:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    .line 127
    .local v4, "frameAnimation4":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 128
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 133
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 138
    return-void
.end method
