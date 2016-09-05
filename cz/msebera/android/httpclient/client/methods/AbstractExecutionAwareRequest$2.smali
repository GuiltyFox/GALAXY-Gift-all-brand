.class Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest$2;
.super Ljava/lang/Object;
.source "AbstractExecutionAwareRequest.java"

# interfaces
.implements Lcz/msebera/android/httpclient/concurrent/Cancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;->setReleaseTrigger(Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;)V
.end annotation


# instance fields
.field final synthetic a:Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;

.field final synthetic b:Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;)V
    .registers 3

    .prologue
    .line 67
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest$2;->b:Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;

    iput-object p2, p0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest$2;->a:Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest$2;->a:Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;->b()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    .line 72
    const/4 v0, 0x1

    .line 74
    :goto_6
    return v0

    .line 73
    :catch_7
    move-exception v0

    .line 74
    const/4 v0, 0x0

    goto :goto_6
.end method
