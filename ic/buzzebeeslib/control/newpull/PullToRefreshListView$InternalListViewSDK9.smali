.class final Lic/buzzebeeslib/control/newpull/PullToRefreshListView$InternalListViewSDK9;
.super Lic/buzzebeeslib/control/newpull/PullToRefreshListView$InternalListView;
.source "PullToRefreshListView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/control/newpull/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InternalListViewSDK9"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/control/newpull/PullToRefreshListView;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/control/newpull/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 263
    iput-object p1, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView$InternalListViewSDK9;->this$0:Lic/buzzebeeslib/control/newpull/PullToRefreshListView;

    .line 264
    invoke-direct {p0, p1, p2, p3}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView$InternalListView;-><init>(Lic/buzzebeeslib/control/newpull/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 265
    return-void
.end method


# virtual methods
.method protected overScrollBy(IIIIIIIIZ)Z
    .registers 17
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    .line 271
    invoke-super/range {p0 .. p9}, Lic/buzzebeeslib/control/newpull/PullToRefreshListView$InternalListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v6

    .line 275
    .local v6, "returnValue":Z
    iget-object v0, p0, Lic/buzzebeeslib/control/newpull/PullToRefreshListView$InternalListViewSDK9;->this$0:Lic/buzzebeeslib/control/newpull/PullToRefreshListView;

    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move/from16 v5, p9

    invoke-static/range {v0 .. v5}, Lcom/handmark/pulltorefresh/library/internal/OverscrollHelper;->overScrollBy(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;IIIIZ)V

    .line 277
    return v6
.end method
