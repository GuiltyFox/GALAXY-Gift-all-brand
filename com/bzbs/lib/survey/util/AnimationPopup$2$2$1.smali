.class Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;
.super Ljava/lang/Object;
.source "AnimationPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;->this$1:Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$2;->val$pActivity:Landroid/app/Activity;

    new-instance v1, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1$1;-><init>(Lcom/bzbs/lib/survey/util/AnimationPopup$2$2$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method
