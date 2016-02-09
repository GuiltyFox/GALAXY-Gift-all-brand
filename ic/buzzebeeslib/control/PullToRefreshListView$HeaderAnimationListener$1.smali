.class Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener$1;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener$1;->this$1:Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 472
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener$1;->this$1:Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;

    # getter for: Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;
    invoke-static {v0}, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->access$1(Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;)Lic/buzzebeeslib/control/PullToRefreshListView;

    move-result-object v0

    # invokes: Lic/buzzebeeslib/control/PullToRefreshListView;->bounceBackHeader()V
    invoke-static {v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->access$7(Lic/buzzebeeslib/control/PullToRefreshListView;)V

    .line 474
    return-void
.end method
