.class public Lcom/bzbs/lib/utils/ProgressDialogCustomUtils;
.super Ljava/lang/Object;
.source "ProgressDialogCustomUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v1, Landroid/app/Dialog;

    sget v0, Lcom/bzbs/lib/http/R$style;->CustomDialog:I

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 21
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 22
    sget v0, Lcom/bzbs/lib/http/R$layout;->dialog_custom_progress:I

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 24
    sget v0, Lcom/bzbs/lib/http/R$id;->progress_pv_circular_colors:I

    invoke-static {v1, v0}, Lbutterknife/ButterKnife;->findById(Landroid/app/Dialog;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rey/material/widget/ProgressView;

    .line 25
    invoke-virtual {v0}, Lcom/rey/material/widget/ProgressView;->a()V

    .line 27
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 29
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 30
    return-object v1
.end method
