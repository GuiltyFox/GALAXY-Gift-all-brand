.class final Lcom/bzbs/lib/survey/control/PullToRefreshGridView$InternalGridViewSDK9;
.super Lcom/bzbs/lib/survey/control/PullToRefreshGridView$InternalGridView;
.source "PullToRefreshGridView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# instance fields
.field final synthetic b:Lcom/bzbs/lib/survey/control/PullToRefreshGridView;


# direct methods
.method public constructor <init>(Lcom/bzbs/lib/survey/control/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 88
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshGridView$InternalGridViewSDK9;->b:Lcom/bzbs/lib/survey/control/PullToRefreshGridView;

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/bzbs/lib/survey/control/PullToRefreshGridView$InternalGridView;-><init>(Lcom/bzbs/lib/survey/control/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method


# virtual methods
.method protected overScrollBy(IIIIIIIIZ)Z
    .registers 17

    .prologue
    .line 96
    invoke-super/range {p0 .. p9}, Lcom/bzbs/lib/survey/control/PullToRefreshGridView$InternalGridView;->overScrollBy(IIIIIIIIZ)Z

    move-result v6

    .line 100
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshGridView$InternalGridViewSDK9;->b:Lcom/bzbs/lib/survey/control/PullToRefreshGridView;

    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move/from16 v5, p9

    invoke-static/range {v0 .. v5}, Lcom/handmark/pulltorefresh/library/internal/OverscrollHelper;->a(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;IIIIZ)V

    .line 102
    return v6
.end method
