.class Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener$1;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;)V
    .registers 2
    .param p1, "this$1"    # Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener$1;->this$1:Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener$1;->this$1:Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;

    iget-object v0, v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    # invokes: Lcom/bzbs/lib/survey/control/PullToRefreshListView;->bounceBackHeader()V
    invoke-static {v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->access$900(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)V

    .line 469
    return-void
.end method
