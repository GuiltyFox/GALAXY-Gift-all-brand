.class Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "RequestHelpPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/RequestHelpPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetProfileDataListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/RequestHelpPostActivity;Ljava/lang/String;)V
    .registers 3
    .param p2, "pUid"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    .line 182
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;)Lcom/samsung/privilege/activity/RequestHelpPostActivity;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 186
    # getter for: Lcom/samsung/privilege/activity/RequestHelpPostActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response_code : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " response_text : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v1, "onComplete"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, " !isFinishing() "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 v0, 0x0

    :goto_32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_57

    .line 190
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_5a

    .line 191
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpPostActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->access$1(Lcom/samsung/privilege/activity/RequestHelpPostActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener$1;-><init>(Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    :cond_57
    :goto_57
    return-void

    .line 188
    :cond_58
    const/4 v0, 0x1

    goto :goto_32

    .line 212
    :cond_5a
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpPostActivity$GetProfileDataListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpPostActivity;

    const-string v1, "Can not load check address profile data."

    # invokes: Lcom/samsung/privilege/activity/RequestHelpPostActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/RequestHelpPostActivity;->access$2(Lcom/samsung/privilege/activity/RequestHelpPostActivity;Ljava/lang/String;)V

    goto :goto_57
.end method
