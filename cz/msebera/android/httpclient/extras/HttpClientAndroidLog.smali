.class public Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;
.super Ljava/lang/Object;
.source "HttpClientAndroidLog.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a:Ljava/lang/String;

    .line 16
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->b:Z

    .line 17
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->c:Z

    .line 18
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->d:Z

    .line 19
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->e:Z

    .line 20
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->f:Z

    .line 21
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 32
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 33
    iget-object v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_f
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 37
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 38
    iget-object v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    :cond_f
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 28
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->b:Z

    return v0
.end method

.method public b(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 50
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 51
    iget-object v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_f
    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 55
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 56
    iget-object v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :cond_f
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->c:Z

    return v0
.end method

.method public c(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 68
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 69
    iget-object v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_f
    return-void
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 73
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 74
    iget-object v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :cond_f
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->e:Z

    return v0
.end method

.method public d(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 86
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 87
    iget-object v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_f
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->f:Z

    return v0
.end method
