.class public Lrx/plugins/RxJavaSchedulersHook;
.super Ljava/lang/Object;
.source "RxJavaSchedulersHook.java"


# static fields
.field private static final a:Lrx/plugins/RxJavaSchedulersHook;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Lrx/plugins/RxJavaSchedulersHook;

    invoke-direct {v0}, Lrx/plugins/RxJavaSchedulersHook;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaSchedulersHook;->a:Lrx/plugins/RxJavaSchedulersHook;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static d()Lrx/plugins/RxJavaSchedulersHook;
    .registers 1

    .prologue
    .line 83
    sget-object v0, Lrx/plugins/RxJavaSchedulersHook;->a:Lrx/plugins/RxJavaSchedulersHook;

    return-object v0
.end method


# virtual methods
.method public a()Lrx/Scheduler;
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lrx/functions/Action0;)Lrx/functions/Action0;
    .registers 2

    .prologue
    .line 79
    return-object p1
.end method

.method public b()Lrx/Scheduler;
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lrx/Scheduler;
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method
