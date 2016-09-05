.class Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/rey/material/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/rey/material/widget/ListPopupWindow;)V
    .registers 2

    .prologue
    .line 1775
    iput-object p1, p0, Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rey/material/widget/ListPopupWindow;Lcom/rey/material/widget/ListPopupWindow$1;)V
    .registers 3

    .prologue
    .line 1775
    invoke-direct {p0, p1}, Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Lcom/rey/material/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    .line 1777
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1778
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 1779
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 1781
    if-nez v0, :cond_53

    iget-object v3, p0, Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-static {v3}, Lcom/rey/material/widget/ListPopupWindow;->a(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/PopupWindow;

    move-result-object v3

    if-eqz v3, :cond_53

    iget-object v3, p0, Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-static {v3}, Lcom/rey/material/widget/ListPopupWindow;->a(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/rey/material/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_53

    if-ltz v1, :cond_53

    iget-object v3, p0, Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-static {v3}, Lcom/rey/material/widget/ListPopupWindow;->a(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/rey/material/widget/PopupWindow;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_53

    if-ltz v2, :cond_53

    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-static {v1}, Lcom/rey/material/widget/ListPopupWindow;->a(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rey/material/widget/PopupWindow;->getHeight()I

    move-result v1

    if-ge v2, v1, :cond_53

    .line 1784
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-static {v0}, Lcom/rey/material/widget/ListPopupWindow;->g(Lcom/rey/material/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-static {v1}, Lcom/rey/material/widget/ListPopupWindow;->f(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1788
    :cond_51
    :goto_51
    const/4 v0, 0x0

    return v0

    .line 1785
    :cond_53
    const/4 v1, 0x1

    if-ne v0, v1, :cond_51

    .line 1786
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-static {v0}, Lcom/rey/material/widget/ListPopupWindow;->g(Lcom/rey/material/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/rey/material/widget/ListPopupWindow$PopupTouchInterceptor;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-static {v1}, Lcom/rey/material/widget/ListPopupWindow;->f(Lcom/rey/material/widget/ListPopupWindow;)Lcom/rey/material/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_51
.end method
