.class Lcom/samsung/privilege/activity/NotificationActivity$2;
.super Ljava/lang/Object;
.source "NotificationActivity.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/NotificationActivity;->bindingEventNotificationPush()V
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
    .line 105
    iput-object p1, p0, Lcom/samsung/privilege/activity/NotificationActivity$2;->this$0:Lcom/samsung/privilege/activity/NotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity$2;->this$0:Lcom/samsung/privilege/activity/NotificationActivity;

    # invokes: Lcom/samsung/privilege/activity/NotificationActivity;->loadNotificationPush()V
    invoke-static {v0}, Lcom/samsung/privilege/activity/NotificationActivity;->access$000(Lcom/samsung/privilege/activity/NotificationActivity;)V

    .line 109
    return-void
.end method
