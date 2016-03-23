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
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/MessageDialogActivity;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/samsung/privilege/activity/MessageDialogActivity$1;->this$0:Lcom/samsung/privilege/activity/MessageDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/privilege/activity/MessageDialogActivity$1;->this$0:Lcom/samsung/privilege/activity/MessageDialogActivity;

    # getter for: Lcom/samsung/privilege/activity/MessageDialogActivity;->paramMessageGCM:Lcom/bzbs/bean/MessageGCM;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->access$000(Lcom/samsung/privilege/activity/MessageDialogActivity;)Lcom/bzbs/bean/MessageGCM;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/samsung/privilege/activity/MessageDialogActivity$1;->this$0:Lcom/samsung/privilege/activity/MessageDialogActivity;

    # getter for: Lcom/samsung/privilege/activity/MessageDialogActivity;->paramMessageGCM:Lcom/bzbs/bean/MessageGCM;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->access$000(Lcom/samsung/privilege/activity/MessageDialogActivity;)Lcom/bzbs/bean/MessageGCM;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "badge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 35
    :cond_22
    iget-object v0, p0, Lcom/samsung/privilege/activity/MessageDialogActivity$1;->this$0:Lcom/samsung/privilege/activity/MessageDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/MessageDialogActivity$1;->this$0:Lcom/samsung/privilege/activity/MessageDialogActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/MessageDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetNotificationUnReadCount(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->SetNotificationUnReadCount(Landroid/content/Context;I)Z

    .line 36
    iget-object v0, p0, Lcom/samsung/privilege/activity/MessageDialogActivity$1;->this$0:Lcom/samsung/privilege/activity/MessageDialogActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MessageDialogActivity$1;->this$0:Lcom/samsung/privilege/activity/MessageDialogActivity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MessageDialogActivity$1;->this$0:Lcom/samsung/privilege/activity/MessageDialogActivity;

    # getter for: Lcom/samsung/privilege/activity/MessageDialogActivity;->paramMessageGCM:Lcom/bzbs/bean/MessageGCM;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MessageDialogActivity;->access$000(Lcom/samsung/privilege/activity/MessageDialogActivity;)Lcom/bzbs/bean/MessageGCM;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/activity/MessageDialogActivity;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/activity/MessageDialogActivity;->access$100(Lcom/samsung/privilege/activity/MessageDialogActivity;Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    :cond_46
    return-void
.end method
