.class Lcom/bzbs/lib/survey/util/AnimationPopup$3$3;
.super Ljava/lang/Object;
.source "AnimationPopup.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPopup$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$3;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/AnimationPopup$3;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/AnimationPopup$3;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3$3;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3$3;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$3;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$pLayoutPopup:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/bzbs/lib/survey/util/AnimationPopup$3$3$1;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/util/AnimationPopup$3$3$1;-><init>(Lcom/bzbs/lib/survey/util/AnimationPopup$3$3;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 329
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
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3$3;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$3;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$pActivity:Landroid/app/Activity;

    new-instance v1, Lcom/bzbs/lib/survey/util/AnimationPopup$3$3$2;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/util/AnimationPopup$3$3$2;-><init>(Lcom/bzbs/lib/survey/util/AnimationPopup$3$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 344
    return-void
.end method
