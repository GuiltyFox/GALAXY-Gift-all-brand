.class public Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "PostAsyncUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/util/PostAsyncUtil;
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

.field notificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILandroid/app/NotificationManager;Ljava/lang/String;)V
    .registers 9
    .param p1, "pStrPageHeader"    # Ljava/lang/String;
    .param p2, "pStrMessage"    # Ljava/lang/String;
    .param p3, "pIntPAGE_MODE"    # I
    .param p4, "pIntNotification_posting_number"    # I
    .param p5, "pNotificationManager"    # Landroid/app/NotificationManager;
    .param p6, "pfilepath"    # Ljava/lang/String;

    .prologue
    .line 1981
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 1974
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->StrPageHeader:Ljava/lang/String;

    .line 1975
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->StrMessage:Ljava/lang/String;

    .line 1979
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    .line 1982
    const-string v0, "AsyncHttpResponseHandler:constructor:"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1983
    iput-object p1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->StrPageHeader:Ljava/lang/String;

    .line 1984
    iput-object p2, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->StrMessage:Ljava/lang/String;

    .line 1985
    iput p3, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->IntPAGE_MODE:I

    .line 1986
    iput p4, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->IntNotification_posting_number:I

    .line 1987
    iput-object p5, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->notificationManager:Landroid/app/NotificationManager;

    .line 1988
    iput-object p6, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    .line 1989
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 2073
    const-string v0, "gift.postasyn"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "4@|onFailure|response "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 2076
    # getter for: Lcom/samsung/privilege/util/PostAsyncUtil;->gHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$4()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$2;-><init>(Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2120
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 5
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1993
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InviteFriendListener:response:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 1994
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finish:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 2000
    # getter for: Lcom/samsung/privilege/util/PostAsyncUtil;->gHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$4()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$1;-><init>(Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2069
    return-void
.end method
