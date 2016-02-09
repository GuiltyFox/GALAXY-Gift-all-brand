.class public Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncHttpResponseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/RegisterActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/RegisterActivity;)V
    .registers 2

    .prologue
    .line 244
    iput-object p1, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/RegisterActivity;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 282
    const-string v0, "Register"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/RegisterActivity;->pbLoadingProfile:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/RegisterActivity;->access$1(Lcom/samsung/privilege/activity/RegisterActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$2;

    invoke-direct {v1, p0, p2}, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$2;-><init>(Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 5
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/RegisterActivity;->pbLoadingProfile:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 248
    const-string v0, "Register"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(AsyncHttpResponseHandler):response"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/RegisterActivity;->access$1(Lcom/samsung/privilege/activity/RegisterActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$1;-><init>(Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 278
    return-void
.end method
