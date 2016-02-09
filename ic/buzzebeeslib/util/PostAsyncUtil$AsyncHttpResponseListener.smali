.class public Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "PostAsyncUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/util/PostAsyncUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncHttpResponseListener"
.end annotation


# instance fields
.field IntNotification_posting_number:I

.field IntPAGE_MODE:I

.field StrMessage:Ljava/lang/String;

.field StrPageHeader:Ljava/lang/String;

.field filepath:Ljava/lang/String;

.field gAppContext:Landroid/content/Context;

.field notificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    .registers 9
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "pStrPageHeader"    # Ljava/lang/String;
    .param p3, "pStrMessage"    # Ljava/lang/String;
    .param p4, "pIntPAGE_MODE"    # I
    .param p5, "pIntNotification_posting_number"    # I
    .param p6, "pNotificationManager"    # Landroid/app/NotificationManager;
    .param p7, "pfilepath"    # Ljava/lang/String;

    .prologue
    .line 883
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 876
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->StrPageHeader:Ljava/lang/String;

    .line 877
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->StrMessage:Ljava/lang/String;

    .line 881
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    .line 884
    iput-object p1, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    .line 885
    iput-object p2, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->StrPageHeader:Ljava/lang/String;

    .line 886
    iput-object p3, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->StrMessage:Ljava/lang/String;

    .line 887
    iput p4, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->IntPAGE_MODE:I

    .line 888
    iput p5, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->IntNotification_posting_number:I

    .line 889
    iput-object p6, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->notificationManager:Landroid/app/NotificationManager;

    .line 890
    iput-object p7, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    .line 891
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 970
    const-string v0, "buzzebees.postasyn"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "4@|onFailure|response "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object v0, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFailure:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 973
    # getter for: Lic/buzzebeeslib/util/PostAsyncUtil;->gHandler:Landroid/os/Handler;
    invoke-static {}, Lic/buzzebeeslib/util/PostAsyncUtil;->access$3()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$2;

    invoke-direct {v1, p0, p2, p1}, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$2;-><init>(Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1015
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 6
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 895
    iget-object v0, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InviteFriendListener:response:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 896
    iget-object v0, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finish:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 898
    # getter for: Lic/buzzebeeslib/util/PostAsyncUtil;->gHandler:Landroid/os/Handler;
    invoke-static {}, Lic/buzzebeeslib/util/PostAsyncUtil;->access$3()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$1;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$1;-><init>(Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 966
    return-void
.end method
