.class public abstract Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "BlurDialogFragment.java"


# instance fields
.field private mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

.field private mDimmingEffect:Z

.field private mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBlurRadius()I
    .registers 2

    .prologue
    .line 160
    const/16 v0, 0x8

    return v0
.end method

.method protected getDownScaleFactor()F
    .registers 2

    .prologue
    .line 146
    const/high16 v0, 0x40800000

    return v0
.end method

.method protected isActionBarBlurred()Z
    .registers 2

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method protected isDebugEnable()Z
    .registers 2

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method protected isDimmingEnable()Z
    .registers 2

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method protected isRenderScriptEnable()Z
    .registers 2

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance v2, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    .line 38
    iget-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v2, :cond_19

    .line 39
    iget-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    iget-object v3, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v3}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->setToolbar(Landroid/support/v7/widget/Toolbar;)V

    .line 42
    :cond_19
    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->getBlurRadius()I

    move-result v1

    .line 43
    .local v1, "radius":I
    if-gtz v1, :cond_39

    .line 44
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

    .line 46
    :cond_39
    iget-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {v2, v1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->setBlurRadius(I)V

    .line 48
    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->getDownScaleFactor()F

    move-result v0

    .line 49
    .local v0, "factor":F
    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_63

    .line 50
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

    .line 52
    :cond_63
    iget-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {v2, v0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->setDownScaleFactor(F)V

    .line 54
    iget-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->isRenderScriptEnable()Z

    move-result v3

    invoke-virtual {v2, v3}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->setUseRenderScript(Z)V

    .line 56
    iget-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->isDebugEnable()Z

    move-result v3

    invoke-virtual {v2, v3}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->debug(Z)V

    .line 58
    iget-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->isActionBarBlurred()Z

    move-result v3

    invoke-virtual {v2, v3}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->setBlurActionBar(Z)V

    .line 60
    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->isDimmingEnable()Z

    move-result v2

    iput-boolean v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->mDimmingEffect:Z

    .line 61
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 99
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {v0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->onDestroy()V

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
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 93
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {v0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->onDismiss()V

    .line 94
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 85
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 86
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->getRetainInstance()Z

    move-result v1

    invoke-virtual {v0, v1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->onResume(Z)V

    .line 87
    return-void
.end method

.method public onStart()V
    .registers 5

    .prologue
    .line 65
    invoke-virtual {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 66
    .local v1, "dialog":Landroid/app/Dialog;
    if-eqz v1, :cond_2a

    .line 69
    iget-boolean v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->mDimmingEffect:Z

    if-nez v2, :cond_12

    .line 70
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 74
    :cond_12
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 75
    .local v0, "currentAnimation":I
    if-nez v0, :cond_2a

    .line 76
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    sget v3, Lfr/tvbarthel/lib/blurdialogfragment/R$style;->BlurDialogFragment_Default_Animation:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 80
    .end local v0    # "currentAnimation":I
    :cond_2a
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 81
    return-void
.end method

.method public setToolbar(Landroid/support/v7/widget/Toolbar;)V
    .registers 3
    .param p1, "toolBar"    # Landroid/support/v7/widget/Toolbar;

    .prologue
    .line 118
    iput-object p1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 119
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    if-eqz v0, :cond_b

    .line 120
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->mBlurEngine:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-virtual {v0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->setToolbar(Landroid/support/v7/widget/Toolbar;)V

    .line 122
    :cond_b
    return-void
.end method
