.class Lcom/bzbs/lib/survey/util/AnimationPoint$1$1;
.super Ljava/lang/Object;
.source "AnimationPoint.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPoint$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$1;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/AnimationPoint$1;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/AnimationPoint$1;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 10
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 98
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bzbs/lib/survey/util/AnimationPoint;->IS_PLAYING:Z

    .line 100
    sget-object v0, Lcom/bzbs/lib/survey/LibData;->QUEUE_POINTS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_32

    .line 101
    sget-object v0, Lcom/bzbs/lib/survey/LibData;->QUEUE_POINTS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 102
    .local v7, "points":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$1;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->val$pLayoutRoot:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$1;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->val$pImgCash1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$1;

    iget-object v3, v3, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->val$pImgCash2:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$1;

    iget-object v4, v4, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->val$pImgCash3:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$1;

    iget-object v5, v5, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->val$pImgCash4:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$1$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$1;

    iget-object v6, v6, Lcom/bzbs/lib/survey/util/AnimationPoint$1;->val$pImgComma1:Landroid/widget/ImageView;

    invoke-static/range {v0 .. v6}, Lcom/bzbs/lib/survey/util/AnimationPoint;->PlayPointAnimation(ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 104
    .end local v7    # "points":Ljava/lang/Integer;
    :cond_32
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 109
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 114
    return-void
.end method
