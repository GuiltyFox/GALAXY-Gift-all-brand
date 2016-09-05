.class Lcom/rey/material/widget/ListPopupWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/rey/material/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/rey/material/widget/ListPopupWindow;)V
    .registers 2

    .prologue
    .line 1792
    iput-object p1, p0, Lcom/rey/material/widget/ListPopupWindow$PopupScrollListener;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rey/material/widget/ListPopupWindow;Lcom/rey/material/widget/ListPopupWindow$1;)V
    .registers 3

    .prologue
    .line 1792
    invoke-direct {p0, p1}, Lcom/rey/material/widget/ListPopupWindow$PopupScrollListener;-><init>(Lcom/rey/material/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    .prologue
    .line 1796
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5

    .prologue
    .line 1799
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2f

    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow$PopupScrollListener;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/rey/material/widget/ListPopupWindow;->j()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow$PopupScrollListener;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-static {v0}, Lcom/rey/material/widget/ListPopupWindow;->a(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rey/material/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 1801
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow$PopupScrollListener;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-static {v0}, Lcom/rey/material/widget/ListPopupWindow;->g(Lcom/rey/material/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow$PopupScrollListener;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-static {v1}, Lcom/rey/material/widget/ListPopupWindow;->f(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1802
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow$PopupScrollListener;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-static {v0}, Lcom/rey/material/widget/ListPopupWindow;->f(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;->run()V

    .line 1804
    :cond_2f
    return-void
.end method
