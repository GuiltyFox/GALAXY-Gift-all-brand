.class public final Lrx/schedulers/Schedulers;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field private static final d:Lrx/schedulers/Schedulers;


# instance fields
.field private final a:Lrx/Scheduler;

.field private final b:Lrx/Scheduler;

.field private final c:Lrx/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Lrx/schedulers/Schedulers;

    invoke-direct {v0}, Lrx/schedulers/Schedulers;-><init>()V

    sput-object v0, Lrx/schedulers/Schedulers;->d:Lrx/schedulers/Schedulers;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->a()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->d()Lrx/plugins/RxJavaSchedulersHook;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaSchedulersHook;->a()Lrx/Scheduler;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_34

    .line 39
    iput-object v0, p0, Lrx/schedulers/Schedulers;->a:Lrx/Scheduler;

    .line 44
    :goto_13
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->a()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->d()Lrx/plugins/RxJavaSchedulersHook;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaSchedulersHook;->b()Lrx/Scheduler;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_3c

    .line 46
    iput-object v0, p0, Lrx/schedulers/Schedulers;->b:Lrx/Scheduler;

    .line 51
    :goto_23
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->a()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->d()Lrx/plugins/RxJavaSchedulersHook;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaSchedulersHook;->c()Lrx/Scheduler;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_44

    .line 53
    iput-object v0, p0, Lrx/schedulers/Schedulers;->c:Lrx/Scheduler;

    .line 57
    :goto_33
    return-void

    .line 41
    :cond_34
    new-instance v0, Lrx/internal/schedulers/EventLoopsScheduler;

    invoke-direct {v0}, Lrx/internal/schedulers/EventLoopsScheduler;-><init>()V

    iput-object v0, p0, Lrx/schedulers/Schedulers;->a:Lrx/Scheduler;

    goto :goto_13

    .line 48
    :cond_3c
    new-instance v0, Lrx/schedulers/CachedThreadScheduler;

    invoke-direct {v0}, Lrx/schedulers/CachedThreadScheduler;-><init>()V

    iput-object v0, p0, Lrx/schedulers/Schedulers;->b:Lrx/Scheduler;

    goto :goto_23

    .line 55
    :cond_44
    invoke-static {}, Lrx/schedulers/NewThreadScheduler;->b()Lrx/schedulers/NewThreadScheduler;

    move-result-object v0

    iput-object v0, p0, Lrx/schedulers/Schedulers;->c:Lrx/Scheduler;

    goto :goto_33
.end method

.method public static a()Lrx/Scheduler;
    .registers 1

    .prologue
    .line 101
    sget-object v0, Lrx/schedulers/Schedulers;->d:Lrx/schedulers/Schedulers;

    iget-object v0, v0, Lrx/schedulers/Schedulers;->a:Lrx/Scheduler;

    return-object v0
.end method
