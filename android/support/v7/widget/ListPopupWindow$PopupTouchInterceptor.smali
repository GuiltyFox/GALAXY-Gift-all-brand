.class Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ListPopupWindow;)V
    .registers 2

    .prologue
    .line 1344
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;->a:Landroid/support/v7/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1345
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    .line 1349
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1350
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 1351
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 1353
    if-nez v0, :cond_47

    iget-object v3, p0, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;->a:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_47

    iget-object v3, p0, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;->a:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1354
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_47

    if-ltz v1, :cond_47

    iget-object v3, p0, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;->a:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1355
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_47

    if-ltz v2, :cond_47

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;->a:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    if-ge v2, v1, :cond_47

    .line 1356
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;->a:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v0, v0, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;->a:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1360
    :cond_45
    :goto_45
    const/4 v0, 0x0

    return v0

    .line 1357
    :cond_47
    const/4 v1, 0x1

    if-ne v0, v1, :cond_45

    .line 1358
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;->a:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v0, v0, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;->a:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_45
.end method
