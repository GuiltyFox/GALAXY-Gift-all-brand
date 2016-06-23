.class Lcom/samsung/privilege/activity/MainPagerActivity$1;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

.field final synthetic val$paramMessageGCM:Lcom/bzbs/bean/MessageGCM;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/bzbs/bean/MessageGCM;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->val$paramMessageGCM:Lcom/bzbs/bean/MessageGCM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->val$paramMessageGCM:Lcom/bzbs/bean/MessageGCM;

    iget-object v0, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 195
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetNotificationUnReadCount(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->SetNotificationUnReadCount(Landroid/content/Context;I)Z

    .line 196
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->val$paramMessageGCM:Lcom/bzbs/bean/MessageGCM;

    iget-object v1, v1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    :cond_2b
    :goto_2b
    return-void

    .line 197
    :cond_2c
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->val$paramMessageGCM:Lcom/bzbs/bean/MessageGCM;

    iget-object v0, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "message_beacon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 198
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    const-string/jumbo v1, "Power Buy"

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->val$paramMessageGCM:Lcom/bzbs/bean/MessageGCM;

    iget-object v2, v2, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bzbs/util/DialogUtil;->showDialogMessageBeacon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method
