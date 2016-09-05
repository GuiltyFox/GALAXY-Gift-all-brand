.class Lcom/rey/material/widget/Spinner$DropdownPopup$2;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rey/material/widget/Spinner$DropdownPopup;-><init>(Lcom/rey/material/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation


# instance fields
.field final synthetic a:Lcom/rey/material/widget/Spinner;

.field final synthetic b:Lcom/rey/material/widget/Spinner$DropdownPopup;


# direct methods
.method constructor <init>(Lcom/rey/material/widget/Spinner$DropdownPopup;Lcom/rey/material/widget/Spinner;)V
    .registers 3

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/rey/material/widget/Spinner$DropdownPopup$2;->b:Lcom/rey/material/widget/Spinner$DropdownPopup;

    iput-object p2, p0, Lcom/rey/material/widget/Spinner$DropdownPopup$2;->a:Lcom/rey/material/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropdownPopup$2;->b:Lcom/rey/material/widget/Spinner$DropdownPopup;

    iget-object v0, v0, Lcom/rey/material/widget/Spinner$DropdownPopup;->b:Lcom/rey/material/widget/Spinner;

    invoke-virtual {v0}, Lcom/rey/material/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1224
    if-eqz v0, :cond_19

    .line 1225
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_21

    .line 1226
    iget-object v1, p0, Lcom/rey/material/widget/Spinner$DropdownPopup$2;->b:Lcom/rey/material/widget/Spinner$DropdownPopup;

    invoke-static {v1}, Lcom/rey/material/widget/Spinner$DropdownPopup;->b(Lcom/rey/material/widget/Spinner$DropdownPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1230
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropdownPopup$2;->b:Lcom/rey/material/widget/Spinner$DropdownPopup;

    iget-object v0, v0, Lcom/rey/material/widget/Spinner$DropdownPopup;->b:Lcom/rey/material/widget/Spinner;

    invoke-static {v0}, Lcom/rey/material/widget/Spinner;->e(Lcom/rey/material/widget/Spinner;)V

    .line 1231
    return-void

    .line 1228
    :cond_21
    iget-object v1, p0, Lcom/rey/material/widget/Spinner$DropdownPopup$2;->b:Lcom/rey/material/widget/Spinner$DropdownPopup;

    invoke-static {v1}, Lcom/rey/material/widget/Spinner$DropdownPopup;->b(Lcom/rey/material/widget/Spinner$DropdownPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_19
.end method
