.class Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$3;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->smoothScrollToAndBack(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;


# direct methods
.method constructor <init>(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;)V
    .registers 2
    .param p1, "this$0"    # Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;

    .prologue
    .line 1277
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$3;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$3;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$3;->this$0:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmoothScrollFinished()V
    .registers 8

    .prologue
    .line 1281
    .local p0, "this":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$3;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$3;"
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$3;->this$0:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0xe1

    const/4 v6, 0x0

    # invokes: Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->smoothScrollTo(IJJLcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    invoke-static/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->access$100(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;IJJLcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1282
    return-void
.end method
