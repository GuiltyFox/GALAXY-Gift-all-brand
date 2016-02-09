.class Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$1;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->onRefreshing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnSmoothScrollFinishedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;


# direct methods
.method constructor <init>(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$1;->this$0:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;

    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmoothScrollFinished()V
    .registers 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$1;->this$0:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;

    # invokes: Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->callRefreshListener()V
    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;->access$4(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;)V

    .line 738
    return-void
.end method
