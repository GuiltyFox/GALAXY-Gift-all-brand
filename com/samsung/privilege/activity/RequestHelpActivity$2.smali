.class Lcom/samsung/privilege/activity/RequestHelpActivity$2;
.super Ljava/lang/Object;
.source "RequestHelpActivity.java"

# interfaces
.implements Lcom/samsung/privilege/control/PullToRefreshListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/RequestHelpActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/RequestHelpActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$2;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .registers 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$2;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/RequestHelpActivity;->doRefresh(Landroid/view/View;)V

    .line 332
    return-void
.end method
