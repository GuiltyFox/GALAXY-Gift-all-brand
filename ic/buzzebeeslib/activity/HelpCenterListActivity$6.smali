.class Lic/buzzebeeslib/activity/HelpCenterListActivity$6;
.super Ljava/lang/Object;
.source "HelpCenterListActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$6;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;)V
    .registers 4
    .param p1, "refreshView"    # Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;

    .prologue
    .line 561
    iget-object v0, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$6;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->doRefresh(Landroid/view/View;)V

    .line 562
    return-void
.end method
