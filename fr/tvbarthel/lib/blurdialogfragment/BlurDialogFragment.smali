.class public abstract Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "BlurDialogFragment.java"


# instance fields
.field private a:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

.field private b:Landroid/support/v7/widget/Toolbar;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Z
    .registers 2

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method protected b()Z
    .registers 2

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method protected c()Z
    .registers 2

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method protected d()F
    .registers 2

    .prologue
    .line 146
    const/high16 v0, 0x40800000    # 4.0f

    return v0
.end method

.method protected e()I
    .registers 2

    .prologue
    .line 160
    const/16 v0, 0x8

    return v0
.end method

.method protected j()Z
    .registers 2

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance v0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->a:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    .line 38
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->b:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_19

    .line 39
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->a:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->b:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->a(Landroid/support/v7/widget/Toolbar;)V

    .line 42
    :cond_19
    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->e()I

    move-result v0

    .line 43
    if-gtz v0, :cond_39

    .line 44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Blur radius must be strictly positive. Found : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_39
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->a:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {v1, v0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->a(I)V

    .line 48
    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->d()F

    move-result v0

    .line 49
    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_63

    .line 50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Down scale must be strictly greater than 1.0. Found : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_63
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->a:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {v1, v0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->a(F)V

    .line 54
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->a:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->c(Z)V

    .line 56
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->a:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->b(Z)V

    .line 58
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->a:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->d(Z)V

    .line 60
    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->b()Z

    move-result v0

    iput-boolean v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->c:Z

    .line 61
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 99
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->a:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {v0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->b()V

    .line 100
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 104
    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 105
    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 107
    :cond_e
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 108
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 93
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->a:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {v0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->a()V

    .line 94
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 85
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 86
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->a:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->getRetainInstance()Z

    move-result v1

    invoke-virtual {v0, v1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->a(Z)V

    .line 87
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 65
    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_2a

    .line 69
    iget-boolean v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->c:Z

    if-nez v1, :cond_12

    .line 70
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 74
    :cond_12
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 75
    if-nez v1, :cond_2a

    .line 76
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    sget v1, Lfr/tvbarthel/lib/blurdialogfragment/R$style;->BlurDialogFragment_Default_Animation:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 80
    :cond_2a
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 81
    return-void
.end method
