.class Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;
.super Ljava/lang/Object;
.source "AnimationPopup.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPopup$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/AnimationPopup$2;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pLayoutPopup:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;-><init>(Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 215
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 220
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pActivity:Landroid/app/Activity;

    new-instance v1, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$2;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$2;-><init>(Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 230
    return-void
.end method
