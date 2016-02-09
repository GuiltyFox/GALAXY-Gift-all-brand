.class Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener$1;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener$1;->this$1:Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener$1;->this$1:Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;

    # getter for: Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v0}, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->access$1(Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v0

    # invokes: Lcom/samsung/privilege/control/PullToRefreshListView;->bounceBackHeader()V
    invoke-static {v0}, Lcom/samsung/privilege/control/PullToRefreshListView;->access$7(Lcom/samsung/privilege/control/PullToRefreshListView;)V

    .line 488
    return-void
.end method
