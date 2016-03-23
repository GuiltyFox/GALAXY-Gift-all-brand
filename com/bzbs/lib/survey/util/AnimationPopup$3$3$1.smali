.class Lcom/bzbs/lib/survey/util/AnimationPopup$3$3$1;
.super Ljava/lang/Object;
.source "AnimationPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPopup$3$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$3$3;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/AnimationPopup$3$3;)V
    .registers 2
    .param p1, "this$1"    # Lcom/bzbs/lib/survey/util/AnimationPopup$3$3;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3$3$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$3$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3$3$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$3$3;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$3$3;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$3;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$pActivity:Landroid/app/Activity;

    new-instance v1, Lcom/bzbs/lib/survey/util/AnimationPopup$3$3$1$1;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/util/AnimationPopup$3$3$1$1;-><init>(Lcom/bzbs/lib/survey/util/AnimationPopup$3$3$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 327
    return-void
.end method
