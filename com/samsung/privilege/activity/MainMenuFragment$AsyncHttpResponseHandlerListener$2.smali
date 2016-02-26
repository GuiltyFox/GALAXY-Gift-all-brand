.class Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener$2;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;

.field private final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener$2;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener$2;->val$response:Ljava/lang/String;

    .line 1356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener$2;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener$2;->val$response:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$6(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V

    .line 1360
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener$2;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 1361
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener$2;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1364
    :cond_33
    return-void
.end method
