.class Lcom/bzbs/lib/survey/util/AnimationPoint$3$1;
.super Ljava/lang/Object;
.source "AnimationPoint.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPoint$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$3;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/AnimationPoint$3;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/AnimationPoint$3;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 10
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 323
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bzbs/lib/survey/util/AnimationPoint;->IS_PLAYING:Z

    .line 325
    sget-object v0, Lcom/bzbs/lib/survey/LibData;->QUEUE_POINTS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_32

    .line 326
    sget-object v0, Lcom/bzbs/lib/survey/LibData;->QUEUE_POINTS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 327
    .local v7, "points":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$3;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->val$pLayoutRoot:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$3;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->val$pImgCash1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$3;

    iget-object v3, v3, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->val$pImgCash2:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$3;

    iget-object v4, v4, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->val$pImgCash3:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$3;

    iget-object v5, v5, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->val$pImgCash4:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$3$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$3;

    iget-object v6, v6, Lcom/bzbs/lib/survey/util/AnimationPoint$3;->val$pImgComma1:Landroid/widget/ImageView;

    invoke-static/range {v0 .. v6}, Lcom/bzbs/lib/survey/util/AnimationPoint;->PlayPointAnimationFade(ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 329
    .end local v7    # "points":Ljava/lang/Integer;
    :cond_32
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 334
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 339
    return-void
.end method
