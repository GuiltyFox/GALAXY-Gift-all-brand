.class Lcom/samsung/privilege/activity/RequestHelpActivity$3$1$1;
.super Ljava/lang/Object;
.source "RequestHelpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/RequestHelpActivity$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/privilege/activity/RequestHelpActivity$3$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/RequestHelpActivity$3$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$3$1$1;->this$2:Lcom/samsung/privilege/activity/RequestHelpActivity$3$1;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$3$1$1;->this$2:Lcom/samsung/privilege/activity/RequestHelpActivity$3$1;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity$3$1;->this$1:Lcom/samsung/privilege/activity/RequestHelpActivity$3;
    invoke-static {v0}, Lcom/samsung/privilege/activity/RequestHelpActivity$3$1;->access$0(Lcom/samsung/privilege/activity/RequestHelpActivity$3$1;)Lcom/samsung/privilege/activity/RequestHelpActivity$3;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity$3;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/RequestHelpActivity$3;->access$0(Lcom/samsung/privilege/activity/RequestHelpActivity$3;)Lcom/samsung/privilege/activity/RequestHelpActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity;->gListRequestHelp:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->access$4(Lcom/samsung/privilege/activity/RequestHelpActivity;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/control/PullToRefreshListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_33

    .line 351
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$3$1$1;->this$2:Lcom/samsung/privilege/activity/RequestHelpActivity$3$1;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity$3$1;->this$1:Lcom/samsung/privilege/activity/RequestHelpActivity$3;
    invoke-static {v0}, Lcom/samsung/privilege/activity/RequestHelpActivity$3$1;->access$0(Lcom/samsung/privilege/activity/RequestHelpActivity$3$1;)Lcom/samsung/privilege/activity/RequestHelpActivity$3;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity$3;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/RequestHelpActivity$3;->access$0(Lcom/samsung/privilege/activity/RequestHelpActivity$3;)Lcom/samsung/privilege/activity/RequestHelpActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity;->gListRequestHelp:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->access$4(Lcom/samsung/privilege/activity/RequestHelpActivity;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$3$1$1;->this$2:Lcom/samsung/privilege/activity/RequestHelpActivity$3$1;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity$3$1;->this$1:Lcom/samsung/privilege/activity/RequestHelpActivity$3;
    invoke-static {v1}, Lcom/samsung/privilege/activity/RequestHelpActivity$3$1;->access$0(Lcom/samsung/privilege/activity/RequestHelpActivity$3$1;)Lcom/samsung/privilege/activity/RequestHelpActivity$3;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity$3;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/RequestHelpActivity$3;->access$0(Lcom/samsung/privilege/activity/RequestHelpActivity$3;)Lcom/samsung/privilege/activity/RequestHelpActivity;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity;->footerListView:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/privilege/activity/RequestHelpActivity;->access$15(Lcom/samsung/privilege/activity/RequestHelpActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 353
    :cond_33
    return-void
.end method
