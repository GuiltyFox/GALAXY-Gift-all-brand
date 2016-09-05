.class public final Lrx/internal/util/RxJavaPluginUtils;
.super Ljava/lang/Object;
.source "RxJavaPluginUtils.java"


# direct methods
.method public static a(Ljava/lang/Throwable;)V
    .registers 2

    .prologue
    .line 24
    :try_start_0
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->a()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->b()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lrx/plugins/RxJavaErrorHandler;->a(Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 28
    :goto_b
    return-void

    .line 25
    :catch_c
    move-exception v0

    .line 26
    invoke-static {v0}, Lrx/internal/util/RxJavaPluginUtils;->b(Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method private static b(Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 36
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RxJavaErrorHandler threw an Exception. It shouldn\'t. => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    return-void
.end method
