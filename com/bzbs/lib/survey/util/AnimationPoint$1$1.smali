.class Lcom/bzbs/lib/survey/util/AnimationPoint$1$1;
.super Ljava/lang/Object;
.source "AnimationPoint.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPoint$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/util/AnimationPoint$1;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/AnimationPoint$1;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1$1;->a:Lcom/bzbs/lib/survey/util/AnimationPoint$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 9

    .prologue
    .line 98
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bzbs/lib/survey/util/AnimationPoint;->a:Z

    .line 100
    sget-object v0, Lcom/bzbs/lib/survey/LibData;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_32

    .line 101
    sget-object v0, Lcom/bzbs/lib/survey/LibData;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 102
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1$1;->a:Lcom/bzbs/lib/survey/util/AnimationPoint$1;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1$1;->a:Lcom/bzbs/lib/survey/util/AnimationPoint$1;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1$1;->a:Lcom/bzbs/lib/survey/util/AnimationPoint$1;

    iget-object v3, v3, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->c:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1$1;->a:Lcom/bzbs/lib/survey/util/AnimationPoint$1;

    iget-object v4, v4, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->d:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1$1;->a:Lcom/bzbs/lib/survey/util/AnimationPoint$1;

    iget-object v5, v5, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->e:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1$1;->a:Lcom/bzbs/lib/survey/util/AnimationPoint$1;

    iget-object v6, v6, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->f:Landroid/widget/ImageView;

    invoke-static/range {v0 .. v6}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 104
    :cond_32
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 109
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 114
    return-void
.end method
