.class public Lic/buzzebeeslib/control/newpull/PullToRefreshListView$InternalListView;
.super Landroid/widget/ListView;
.source "PullToRefreshListView.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/control/newpull/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InternalListView"
.end annotation


# instance fields
.field private mAddedLvFooter:Z

.field final synthetic this$0:Lic/buzzebeeslib/control/newpull/PullToRefreshListView;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/control/newpull/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 285
    iput-object p1, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView$InternalListView;->this$0:Lic/buzzebeeslib/control/newpull/PullToRefreshListView;

    .line 286
    invoke-direct {p0, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView$InternalListView;->mAddedLvFooter:Z

    .line 287
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 297
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_3} :catch_4

    .line 301
    :goto_3
    return-void

    .line 298
    :catch_4
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 311
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 314
    :goto_4
    return v1

    .line 312
    :catch_5
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 314
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 5
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 321
    iget-object v0, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView$InternalListView;->this$0:Lic/buzzebeeslib/control/newpull/PullToRefreshListView;

    # getter for: Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mLvFooterLoadingFrame:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->access$1(Lic/buzzebeeslib/control/newpull/PullToRefreshListView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView$InternalListView;->mAddedLvFooter:Z

    if-nez v0, :cond_1a

    .line 322
    iget-object v0, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView$InternalListView;->this$0:Lic/buzzebeeslib/control/newpull/PullToRefreshListView;

    # getter for: Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->mLvFooterLoadingFrame:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->access$1(Lic/buzzebeeslib/control/newpull/PullToRefreshListView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView$InternalListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView$InternalListView;->mAddedLvFooter:Z

    .line 326
    :cond_1a
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 327
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .registers 3
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 331
    iget-object v0, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView$InternalListView;->this$0:Lic/buzzebeeslib/control/newpull/PullToRefreshListView;

    invoke-virtual {v0, p1}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView;->setEmptyView(Landroid/view/View;)V

    .line 332
    return-void
.end method

.method public setEmptyViewInternal(Landroid/view/View;)V
    .registers 2
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 336
    invoke-super {p0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 337
    return-void
.end method
