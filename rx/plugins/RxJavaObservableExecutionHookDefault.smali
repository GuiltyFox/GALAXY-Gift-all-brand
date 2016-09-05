.class Lrx/plugins/RxJavaObservableExecutionHookDefault;
.super Lrx/plugins/RxJavaObservableExecutionHook;
.source "RxJavaObservableExecutionHookDefault.java"


# static fields
.field private static a:Lrx/plugins/RxJavaObservableExecutionHookDefault;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    new-instance v0, Lrx/plugins/RxJavaObservableExecutionHookDefault;

    invoke-direct {v0}, Lrx/plugins/RxJavaObservableExecutionHookDefault;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaObservableExecutionHookDefault;->a:Lrx/plugins/RxJavaObservableExecutionHookDefault;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lrx/plugins/RxJavaObservableExecutionHook;-><init>()V

    return-void
.end method

.method public static a()Lrx/plugins/RxJavaObservableExecutionHook;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lrx/plugins/RxJavaObservableExecutionHookDefault;->a:Lrx/plugins/RxJavaObservableExecutionHookDefault;

    return-object v0
.end method
