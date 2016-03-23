.class Lcom/samsung/privilege/activity/NotificationActivity$5;
.super Ljava/lang/Object;
.source "NotificationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/NotificationActivity;->loadNotificationPush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/NotificationActivity;

.field final synthetic val$swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/NotificationActivity;Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/NotificationActivity;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/samsung/privilege/activity/NotificationActivity$5;->this$0:Lcom/samsung/privilege/activity/NotificationActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/NotificationActivity$5;->val$swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity$5;->this$0:Lcom/samsung/privilege/activity/NotificationActivity;

    new-instance v1, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;

    iget-object v2, p0, Lcom/samsung/privilege/activity/NotificationActivity$5;->this$0:Lcom/samsung/privilege/activity/NotificationActivity;

    iget-object v3, p0, Lcom/samsung/privilege/activity/NotificationActivity$5;->this$0:Lcom/samsung/privilege/activity/NotificationActivity;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/NotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->GetAllMessageGCM(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;-><init>(Lcom/samsung/privilege/activity/NotificationActivity;Ljava/util/List;)V

    # setter for: Lcom/samsung/privilege/activity/NotificationActivity;->mNotificationAdapter:Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/NotificationActivity;->access$802(Lcom/samsung/privilege/activity/NotificationActivity;Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;)Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;

    .line 145
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity$5;->this$0:Lcom/samsung/privilege/activity/NotificationActivity;

    # getter for: Lcom/samsung/privilege/activity/NotificationActivity;->mRecyclerNotification:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/NotificationActivity;->access$900(Lcom/samsung/privilege/activity/NotificationActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/NotificationActivity$5;->this$0:Lcom/samsung/privilege/activity/NotificationActivity;

    # getter for: Lcom/samsung/privilege/activity/NotificationActivity;->mNotificationAdapter:Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;
    invoke-static {v1}, Lcom/samsung/privilege/activity/NotificationActivity;->access$800(Lcom/samsung/privilege/activity/NotificationActivity;)Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 147
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity$5;->val$swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 148
    return-void
.end method
