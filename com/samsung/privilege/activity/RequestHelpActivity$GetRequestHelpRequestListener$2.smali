.class Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener$2;
.super Ljava/lang/Object;
.source "RequestHelpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener$2;->this$1:Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener;

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener$2;->this$1:Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener;->access$1(Lcom/samsung/privilege/activity/RequestHelpActivity$GetRequestHelpRequestListener;)Lcom/samsung/privilege/activity/RequestHelpActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity;->gListRequestHelp:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->access$4(Lcom/samsung/privilege/activity/RequestHelpActivity;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/control/PullToRefreshListView;->onRefreshComplete()V

    .line 601
    return-void
.end method
