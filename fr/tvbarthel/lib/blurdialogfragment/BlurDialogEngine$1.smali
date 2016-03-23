.class Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BlurDialogEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->onDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;


# direct methods
.method constructor <init>(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)V
    .registers 2
    .param p1, "this$0"    # Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    .prologue
    .line 170
    iput-object p1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$1;->this$0:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 180
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$1;->this$0:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    # invokes: Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->removeBlurredView()V
    invoke-static {v0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->access$100(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)V

    .line 181
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 174
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$1;->this$0:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    # invokes: Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->removeBlurredView()V
    invoke-static {v0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->access$100(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)V

    .line 175
    return-void
.end method
