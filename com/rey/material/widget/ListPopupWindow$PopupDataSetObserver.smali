.class Lcom/rey/material/widget/ListPopupWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# instance fields
.field final synthetic a:Lcom/rey/material/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/rey/material/widget/ListPopupWindow;)V
    .registers 2

    .prologue
    .line 1744
    iput-object p1, p0, Lcom/rey/material/widget/ListPopupWindow$PopupDataSetObserver;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rey/material/widget/ListPopupWindow;Lcom/rey/material/widget/ListPopupWindow$1;)V
    .registers 3

    .prologue
    .line 1744
    invoke-direct {p0, p1}, Lcom/rey/material/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Lcom/rey/material/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow$PopupDataSetObserver;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/rey/material/widget/ListPopupWindow;->i()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1749
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow$PopupDataSetObserver;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/rey/material/widget/ListPopupWindow;->f()V

    .line 1751
    :cond_d
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow$PopupDataSetObserver;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/rey/material/widget/ListPopupWindow;->g()V

    .line 1756
    return-void
.end method
