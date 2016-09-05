.class final Lbolts/BoltsExecutors;
.super Ljava/lang/Object;
.source "BoltsExecutors.java"


# static fields
.field private static final a:Lbolts/BoltsExecutors;


# instance fields
.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lbolts/BoltsExecutors;

    invoke-direct {v0}, Lbolts/BoltsExecutors;-><init>()V

    sput-object v0, Lbolts/BoltsExecutors;->a:Lbolts/BoltsExecutors;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lbolts/BoltsExecutors;->c()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_d
    iput-object v0, p0, Lbolts/BoltsExecutors;->b:Ljava/util/concurrent/ExecutorService;

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lbolts/BoltsExecutors;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 33
    new-instance v0, Lbolts/BoltsExecutors$ImmediateExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbolts/BoltsExecutors$ImmediateExecutor;-><init>(Lbolts/BoltsExecutors$1;)V

    iput-object v0, p0, Lbolts/BoltsExecutors;->d:Ljava/util/concurrent/Executor;

    .line 34
    return-void

    .line 29
    :cond_1e
    invoke-static {}, Lbolts/AndroidExecutors;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_d
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lbolts/BoltsExecutors;->a:Lbolts/BoltsExecutors;

    iget-object v0, v0, Lbolts/BoltsExecutors;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static b()Ljava/util/concurrent/Executor;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lbolts/BoltsExecutors;->a:Lbolts/BoltsExecutors;

    iget-object v0, v0, Lbolts/BoltsExecutors;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private static c()Z
    .registers 2

    .prologue
    .line 17
    const-string/jumbo v0, "java.runtime.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    if-nez v0, :cond_b

    .line 19
    const/4 v0, 0x0

    .line 21
    :goto_a
    return v0

    :cond_b
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_a
.end method
