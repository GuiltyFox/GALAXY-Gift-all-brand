.class Lcom/bzbs/lib/survey/util/AnimationPoint$3$1;
.super Ljava/lang/Object;
.source "AnimationPoint.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPoint$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/util/AnimationPoint$3;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/AnimationPoint$3;)V
    .registers 2

    .prologue
    .line 320
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3$1;->a:Lcom/bzbs/lib/survey/util/AnimationPoint$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 9

    .prologue
    .line 323
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bzbs/lib/survey/util/AnimationPoint;->a:Z

    .line 325
    sget-object v0, Lcom/bzbs/lib/survey/LibData;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_32

    .line 326
    sget-object v0, Lcom/bzbs/lib/survey/LibData;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 327
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3$1;->a:Lcom/bzbs/lib/survey/util/AnimationPoint$3;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->b:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3$1;->a:Lcom/bzbs/lib/survey/util/AnimationPoint$3;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3$1;->a:Lcom/bzbs/lib/survey/util/AnimationPoint$3;

    iget-object v3, v3, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->d:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3$1;->a:Lcom/bzbs/lib/survey/util/AnimationPoint$3;

    iget-object v4, v4, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->e:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3$1;->a:Lcom/bzbs/lib/survey/util/AnimationPoint$3;

    iget-object v5, v5, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->f:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3$1;->a:Lcom/bzbs/lib/survey/util/AnimationPoint$3;

    iget-object v6, v6, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->g:Landroid/widget/ImageView;

    invoke-static/range {v0 .. v6}, Lcom/bzbs/lib/survey/util/AnimationPoint;->b(ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 329
    :cond_32
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 334
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 339
    return-void
.end method
