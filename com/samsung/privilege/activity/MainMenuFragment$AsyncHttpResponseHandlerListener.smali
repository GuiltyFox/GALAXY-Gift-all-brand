.class Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MainMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/MainMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncHttpResponseHandlerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainMenuFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment;)V
    .registers 2

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;)V
    .registers 3

    .prologue
    .line 1318
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;)V

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;)Lcom/samsung/privilege/activity/MainMenuFragment;
    .registers 2

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$5(Lcom/samsung/privilege/activity/MainMenuFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$11(Lcom/samsung/privilege/activity/MainMenuFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener$2;

    invoke-direct {v1, p0, p2}, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener$2;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1367
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 5
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$5(Lcom/samsung/privilege/activity/MainMenuFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$11(Lcom/samsung/privilege/activity/MainMenuFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener$1;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1351
    return-void
.end method
