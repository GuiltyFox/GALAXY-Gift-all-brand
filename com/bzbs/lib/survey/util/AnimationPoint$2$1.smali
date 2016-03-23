.class Lcom/bzbs/lib/survey/util/AnimationPoint$2$1;
.super Ljava/lang/Object;
.source "AnimationPoint.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPoint$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$2;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/AnimationPoint$2;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/AnimationPoint$2;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$2$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 11
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 211
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bzbs/lib/survey/util/AnimationPoint;->IS_PLAYING:Z

    .line 213
    sget-object v0, Lcom/bzbs/lib/survey/LibData;->QUEUE_POINTS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_36

    .line 214
    sget-object v0, Lcom/bzbs/lib/survey/LibData;->QUEUE_POINTS:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 215
    .local v8, "points":Ljava/lang/Integer;
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$2$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPoint$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$2$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$2;

    iget-object v2, v2, Lcom/bzbs/lib/survey/util/AnimationPoint$2;->val$pLayoutRoot:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$2$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$2;

    iget-object v3, v3, Lcom/bzbs/lib/survey/util/AnimationPoint$2;->val$pImgCash1:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$2$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$2;

    iget-object v4, v4, Lcom/bzbs/lib/survey/util/AnimationPoint$2;->val$pImgCash2:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$2$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$2;

    iget-object v5, v5, Lcom/bzbs/lib/survey/util/AnimationPoint$2;->val$pImgCash3:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$2$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$2;

    iget-object v6, v6, Lcom/bzbs/lib/survey/util/AnimationPoint$2;->val$pImgCash4:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/bzbs/lib/survey/util/AnimationPoint$2$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPoint$2;

    iget-object v7, v7, Lcom/bzbs/lib/survey/util/AnimationPoint$2;->val$pImgComma1:Landroid/widget/ImageView;

    invoke-static/range {v0 .. v7}, Lcom/bzbs/lib/survey/util/AnimationPoint;->PlayPointAnimation2(Landroid/os/Handler;ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 217
    .end local v8    # "points":Ljava/lang/Integer;
    :cond_36
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 222
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 227
    return-void
.end method
