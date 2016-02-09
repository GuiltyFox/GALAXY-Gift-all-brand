.class Lcom/samsung/privilege/activity/MessageDialogActivity$1;
.super Ljava/lang/Object;
.source "MessageDialogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MessageDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MessageDialogActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MessageDialogActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MessageDialogActivity$1;->this$0:Lcom/samsung/privilege/activity/MessageDialogActivity;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/privilege/activity/MessageDialogActivity$1;->this$0:Lcom/samsung/privilege/activity/MessageDialogActivity;

    # getter for: Lcom/samsung/privilege/activity/MessageDialogActivity;->paramMessageGCM:Lcom/samsung/privilege/bean/MessageGCM;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->access$0(Lcom/samsung/privilege/activity/MessageDialogActivity;)Lcom/samsung/privilege/bean/MessageGCM;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/privilege/bean/MessageGCM;->type:Ljava/lang/String;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/samsung/privilege/activity/MessageDialogActivity$1;->this$0:Lcom/samsung/privilege/activity/MessageDialogActivity;

    # getter for: Lcom/samsung/privilege/activity/MessageDialogActivity;->paramMessageGCM:Lcom/samsung/privilege/bean/MessageGCM;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->access$0(Lcom/samsung/privilege/activity/MessageDialogActivity;)Lcom/samsung/privilege/bean/MessageGCM;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/privilege/bean/MessageGCM;->type:Ljava/lang/String;

    const-string v1, "badge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/samsung/privilege/activity/MessageDialogActivity$1;->this$0:Lcom/samsung/privilege/activity/MessageDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/MessageDialogActivity$1;->this$0:Lcom/samsung/privilege/activity/MessageDialogActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/MessageDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->GetNotificationUnReadCount(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/privilege/UserLogin;->SetNotificationUnReadCount(Landroid/content/Context;I)Z

    .line 34
    iget-object v0, p0, Lcom/samsung/privilege/activity/MessageDialogActivity$1;->this$0:Lcom/samsung/privilege/activity/MessageDialogActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MessageDialogActivity$1;->this$0:Lcom/samsung/privilege/activity/MessageDialogActivity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MessageDialogActivity$1;->this$0:Lcom/samsung/privilege/activity/MessageDialogActivity;

    # getter for: Lcom/samsung/privilege/activity/MessageDialogActivity;->paramMessageGCM:Lcom/samsung/privilege/bean/MessageGCM;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MessageDialogActivity;->access$0(Lcom/samsung/privilege/activity/MessageDialogActivity;)Lcom/samsung/privilege/bean/MessageGCM;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/privilege/bean/MessageGCM;->alert:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/activity/MessageDialogActivity;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/activity/MessageDialogActivity;->access$1(Lcom/samsung/privilege/activity/MessageDialogActivity;Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    :cond_44
    return-void
.end method
