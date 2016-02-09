.class Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$2;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;

.field private final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$2;->this$1:Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$2;->val$response:Ljava/lang/String;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 286
    const/4 v0, 0x0

    .line 288
    .local v0, "blnIsAdmin":Z
    :try_start_1
    iget-object v2, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$2;->this$1:Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/RegisterActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_2f

    move-result v2

    if-eqz v2, :cond_12

    .line 289
    const/4 v0, 0x1

    .line 294
    :cond_12
    :goto_12
    if-eqz v0, :cond_49

    .line 295
    iget-object v2, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$2;->this$1:Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/RegisterActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$2;->val$response:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/RegisterActivity;->showToast(Ljava/lang/String;)V

    .line 299
    :goto_2e
    return-void

    .line 291
    :catch_2f
    move-exception v1

    .line 292
    .local v1, "e2":Ljava/lang/Exception;
    const-string v2, "Register"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 297
    .end local v1    # "e2":Ljava/lang/Exception;
    :cond_49
    iget-object v2, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$2;->this$1:Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/RegisterActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/privilege/activity/RegisterActivity$AsyncHttpResponseListener$2;->val$response:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/RegisterActivity;->showToast(Ljava/lang/String;)V

    goto :goto_2e
.end method
