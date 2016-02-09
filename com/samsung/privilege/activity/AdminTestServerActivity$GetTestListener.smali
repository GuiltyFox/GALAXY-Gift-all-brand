.class public Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "AdminTestServerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/AdminTestServerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetTestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/AdminTestServerActivity;)V
    .registers 2

    .prologue
    .line 199
    iput-object p1, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;)Lcom/samsung/privilege/activity/AdminTestServerActivity;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 202
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_55

    .line 203
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->gStrData:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$1(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<font color=green>CODE:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$2(Lcom/samsung/privilege/activity/AdminTestServerActivity;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->gStrData:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$1(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</font><br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$2(Lcom/samsung/privilege/activity/AdminTestServerActivity;Ljava/lang/String;)V

    .line 210
    :goto_4a
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    new-instance v1, Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener$1;-><init>(Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 215
    return-void

    .line 206
    :cond_55
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->gStrData:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$1(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<font color=red>CODE:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$2(Lcom/samsung/privilege/activity/AdminTestServerActivity;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;->this$0:Lcom/samsung/privilege/activity/AdminTestServerActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminTestServerActivity;->gStrData:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$1(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</font><br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->access$2(Lcom/samsung/privilege/activity/AdminTestServerActivity;Ljava/lang/String;)V

    goto :goto_4a
.end method
