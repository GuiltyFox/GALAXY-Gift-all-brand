.class final Lokhttp3/RealCall$AsyncCall;
.super Lokhttp3/internal/NamedRunnable;
.source "RealCall.java"


# instance fields
.field final synthetic a:Lokhttp3/RealCall;

.field private final c:Lokhttp3/Callback;

.field private final d:Z


# direct methods
.method private constructor <init>(Lokhttp3/RealCall;Lokhttp3/Callback;Z)V
    .registers 8

    .prologue
    .line 98
    iput-object p1, p0, Lokhttp3/RealCall$AsyncCall;->a:Lokhttp3/RealCall;

    .line 99
    const-string/jumbo v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lokhttp3/RealCall;->a()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iput-object p2, p0, Lokhttp3/RealCall$AsyncCall;->c:Lokhttp3/Callback;

    .line 101
    iput-boolean p3, p0, Lokhttp3/RealCall$AsyncCall;->d:Z

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/RealCall;Lokhttp3/Callback;ZLokhttp3/RealCall$1;)V
    .registers 5

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/RealCall$AsyncCall;-><init>(Lokhttp3/RealCall;Lokhttp3/Callback;Z)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->a:Lokhttp3/RealCall;

    iget-object v0, v0, Lokhttp3/RealCall;->b:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 125
    const/4 v2, 0x0

    .line 127
    :try_start_2
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->a:Lokhttp3/RealCall;

    iget-boolean v3, p0, Lokhttp3/RealCall$AsyncCall;->d:Z

    invoke-static {v0, v3}, Lokhttp3/RealCall;->a(Lokhttp3/RealCall;Z)Lokhttp3/Response;

    move-result-object v0

    .line 128
    iget-object v3, p0, Lokhttp3/RealCall$AsyncCall;->a:Lokhttp3/RealCall;

    iget-boolean v2, v3, Lokhttp3/RealCall;->a:Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_7f
    .catchall {:try_start_2 .. :try_end_e} :catchall_70

    if-eqz v2, :cond_2d

    .line 130
    :try_start_10
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->c:Lokhttp3/Callback;

    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->a:Lokhttp3/RealCall;

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lokhttp3/Callback;->a(Lokhttp3/Call;Ljava/io/IOException;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1f} :catch_35
    .catchall {:try_start_10 .. :try_end_1f} :catchall_70

    .line 143
    :goto_1f
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->a:Lokhttp3/RealCall;

    invoke-static {v0}, Lokhttp3/RealCall;->b(Lokhttp3/RealCall;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->s()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/Dispatcher;->b(Lokhttp3/RealCall$AsyncCall;)V

    .line 145
    :goto_2c
    return-void

    .line 133
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->c:Lokhttp3/Callback;

    iget-object v3, p0, Lokhttp3/RealCall$AsyncCall;->a:Lokhttp3/RealCall;

    invoke-interface {v2, v3, v0}, Lokhttp3/Callback;->a(Lokhttp3/Call;Lokhttp3/Response;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_34} :catch_35
    .catchall {:try_start_2d .. :try_end_34} :catchall_70

    goto :goto_1f

    .line 135
    :catch_35
    move-exception v0

    .line 136
    :goto_36
    if-eqz v1, :cond_68

    .line 138
    :try_start_38
    invoke-static {}, Lokhttp3/internal/Platform;->c()Lokhttp3/internal/Platform;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/RealCall$AsyncCall;->a:Lokhttp3/RealCall;

    invoke-static {v4}, Lokhttp3/RealCall;->a(Lokhttp3/RealCall;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/internal/Platform;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5a
    .catchall {:try_start_38 .. :try_end_5a} :catchall_70

    .line 143
    :goto_5a
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->a:Lokhttp3/RealCall;

    invoke-static {v0}, Lokhttp3/RealCall;->b(Lokhttp3/RealCall;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->s()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/Dispatcher;->b(Lokhttp3/RealCall$AsyncCall;)V

    goto :goto_2c

    .line 140
    :cond_68
    :try_start_68
    iget-object v1, p0, Lokhttp3/RealCall$AsyncCall;->c:Lokhttp3/Callback;

    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->a:Lokhttp3/RealCall;

    invoke-interface {v1, v2, v0}, Lokhttp3/Callback;->a(Lokhttp3/Call;Ljava/io/IOException;)V
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_70

    goto :goto_5a

    .line 143
    :catchall_70
    move-exception v0

    iget-object v1, p0, Lokhttp3/RealCall$AsyncCall;->a:Lokhttp3/RealCall;

    invoke-static {v1}, Lokhttp3/RealCall;->b(Lokhttp3/RealCall;)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->s()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->b(Lokhttp3/RealCall$AsyncCall;)V

    throw v0

    .line 135
    :catch_7f
    move-exception v0

    move v1, v2

    goto :goto_36
.end method
