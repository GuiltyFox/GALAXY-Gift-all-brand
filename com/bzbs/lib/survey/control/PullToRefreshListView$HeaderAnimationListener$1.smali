.class Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener$1;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;)V
    .registers 2

    .prologue
    .line 463
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener$1;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener$1;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;

    iget-object v0, v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->f(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)V

    .line 469
    return-void
.end method
