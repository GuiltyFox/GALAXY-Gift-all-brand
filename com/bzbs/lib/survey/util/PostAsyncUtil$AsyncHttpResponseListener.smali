.class public Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "PostAsyncUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/util/PostAsyncUtil;
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
    .line 880
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 873
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->StrPageHeader:Ljava/lang/String;

    .line 874
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->StrMessage:Ljava/lang/String;

    .line 878
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    .line 881
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    .line 882
    iput-object p2, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->StrPageHeader:Ljava/lang/String;

    .line 883
    iput-object p3, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->StrMessage:Ljava/lang/String;

    .line 884
    iput p4, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->IntPAGE_MODE:I

    .line 885
    iput p5, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->IntNotification_posting_number:I

    .line 886
    iput-object p6, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->notificationManager:Landroid/app/NotificationManager;

    .line 887
    iput-object p7, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    .line 888
    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 9
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 969
    const-string/jumbo v2, "buzzebees.postasyn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "4@|onFailure|response "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p3, :cond_47

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    :goto_16
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFailure:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 971
    if-eqz p3, :cond_4b

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 972
    .local v0, "response":Ljava/lang/String;
    :goto_44
    if-nez v0, :cond_4d

    .line 1016
    :goto_46
    return-void

    .line 969
    .end local v0    # "response":Ljava/lang/String;
    :cond_47
    const-string/jumbo v1, ""

    goto :goto_16

    .line 971
    :cond_4b
    const/4 v0, 0x0

    goto :goto_44

    .line 975
    .restart local v0    # "response":Ljava/lang/String;
    :cond_4d
    # getter for: Lcom/bzbs/lib/survey/util/PostAsyncUtil;->gHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->access$500()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$2;

    invoke-direct {v2, p0, v0}, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$2;-><init>(Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_46
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 9
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    const/4 v4, 0x1

    .line 892
    if-nez p3, :cond_4

    .line 965
    :goto_3
    return-void

    .line 894
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 895
    .local v0, "response":Ljava/lang/String;
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "InviteFriendListener:response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 896
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "finish:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 898
    # getter for: Lcom/bzbs/lib/survey/util/PostAsyncUtil;->gHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->access$500()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$1;

    invoke-direct {v2, p0, v0}, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$1;-><init>(Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3
.end method
