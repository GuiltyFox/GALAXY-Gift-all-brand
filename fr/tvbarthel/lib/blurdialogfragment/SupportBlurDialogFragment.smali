.class public abstract Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SupportBlurDialogFragment.java"


# instance fields
.field private mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

.field private mDimmingEffect:Z

.field private mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBlurRadius()I
    .registers 2

    .prologue
    .line 162
    const/16 v0, 0x8

    return v0
.end method

.method protected getDownScaleFactor()F
    .registers 2

    .prologue
    .line 148
    const/high16 v0, 0x40800000

    return v0
.end method

.method protected isActionBarBlurred()Z
    .registers 2

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method protected isDebugEnable()Z
    .registers 2

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method protected isDimmingEnable()Z
    .registers 2

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method protected isRenderScriptEnable()Z
    .registers 2

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    new-instance v2, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    .line 40
    iget-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v2, :cond_19

    .line 41
    iget-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    iget-object v3, p0, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v3}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->setToolbar(Landroid/support/v7/widget/Toolbar;)V

    .line 44
    :cond_19
    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->getBlurRadius()I

    move-result v1

    .line 45
    .local v1, "radius":I
    if-gtz v1, :cond_39

    .line 46
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Blur radius must be strictly positive. Found : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_39
    iget-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {v2, v1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->setBlurRadius(I)V

    .line 50
    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->getDownScaleFactor()F

    move-result v0

    .line 51
    .local v0, "factor":F
    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_63

    .line 52
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Down scale must be strictly greater than 1.0. Found : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_63
    iget-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {v2, v0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->setDownScaleFactor(F)V

    .line 56
    iget-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->isRenderScriptEnable()Z

    move-result v3

    invoke-virtual {v2, v3}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->setUseRenderScript(Z)V

    .line 58
    iget-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->isDebugEnable()Z

    move-result v3

    invoke-virtual {v2, v3}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->debug(Z)V

    .line 60
    iget-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->isActionBarBlurred()Z

    move-result v3

    invoke-virtual {v2, v3}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->setBlurActionBar(Z)V

    .line 62
    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->isDimmingEnable()Z

    move-result v2

    iput-boolean v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->mDimmingEffect:Z

    .line 63
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 101
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {v0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->onDestroy()V

    .line 102
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 107
    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 109
    :cond_e
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 110
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 95
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {v0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->onDismiss()V

    .line 96
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 88
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 89
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->getRetainInstance()Z

    move-result v1

    invoke-virtual {v0, v1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->onResume(Z)V

    .line 90
    return-void
.end method

.method public onStart()V
    .registers 5

    .prologue
    .line 67
    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 68
    .local v1, "dialog":Landroid/app/Dialog;
    if-eqz v1, :cond_2e

    .line 71
    iget-boolean v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->mDimmingEffect:Z

    if-nez v2, :cond_16

    .line 72
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 73
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 77
    :cond_16
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 78
    .local v0, "currentAnimation":I
    if-nez v0, :cond_2e

    .line 79
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    sget v3, Lfr/tvbarthel/lib/blurdialogfragment/R$style;->BlurDialogFragment_Default_Animation:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 83
    .end local v0    # "currentAnimation":I
    :cond_2e
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 84
    return-void
.end method

.method public setToolbar(Landroid/support/v7/widget/Toolbar;)V
    .registers 3
    .param p1, "toolBar"    # Landroid/support/v7/widget/Toolbar;

    .prologue
    .line 120
    iput-object p1, p0, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 121
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    if-eqz v0, :cond_b

    .line 122
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/SupportBlurDialogFragment;->mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {v0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->setToolbar(Landroid/support/v7/widget/Toolbar;)V

    .line 124
    :cond_b
    return-void
.end method
