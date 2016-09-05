.class final Lrx/internal/util/PlatformDependent$1;
.super Ljava/lang/Object;
.source "PlatformDependent.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/PlatformDependent;->c()Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 84
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lrx/internal/util/PlatformDependent$1;->a()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
