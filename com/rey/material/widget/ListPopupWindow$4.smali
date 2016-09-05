.class Lcom/rey/material/widget/ListPopupWindow$4;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rey/material/widget/ListPopupWindow;->m()I
.end annotation


# instance fields
.field final synthetic a:Lcom/rey/material/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/rey/material/widget/ListPopupWindow;)V
    .registers 2

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/rey/material/widget/ListPopupWindow$4;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1115
    const/4 v0, -0x1

    if-eq p3, v0, :cond_f

    .line 1116
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow$4;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-static {v0}, Lcom/rey/material/widget/ListPopupWindow;->b(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    .line 1118
    if-eqz v0, :cond_f

    .line 1119
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rey/material/widget/ListPopupWindow$DropDownListView;->a(Lcom/rey/material/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 1122
    :cond_f
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1125
    return-void
.end method
