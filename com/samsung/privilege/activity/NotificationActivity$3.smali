.class Lcom/samsung/privilege/activity/NotificationActivity$3;
.super Ljava/lang/Object;
.source "NotificationActivity.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/NotificationActivity;->bindingEventNotificationPull()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/NotificationActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/NotificationActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/NotificationActivity;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/privilege/activity/NotificationActivity$3;->this$0:Lcom/samsung/privilege/activity/NotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity$3;->this$0:Lcom/samsung/privilege/activity/NotificationActivity;

    const/4 v1, 0x0

    # invokes: Lcom/samsung/privilege/activity/NotificationActivity;->loadNotificationPull(I)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/NotificationActivity;->access$100(Lcom/samsung/privilege/activity/NotificationActivity;I)V

    .line 119
    return-void
.end method
