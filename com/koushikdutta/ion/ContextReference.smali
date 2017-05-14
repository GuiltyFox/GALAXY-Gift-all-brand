.class abstract Lcom/koushikdutta/ion/ContextReference;
.super Ljava/lang/ref/WeakReference;
.source "ContextReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/koushikdutta/ion/ContextReference;
    .registers 2

    .prologue
    .line 165
    instance-of v0, p0, Landroid/app/Service;

    if-eqz v0, :cond_c

    .line 166
    new-instance v0, Lcom/koushikdutta/ion/ContextReference$ServiceContextReference;

    check-cast p0, Landroid/app/Service;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/ContextReference$ServiceContextReference;-><init>(Landroid/app/Service;)V

    .line 170
    :goto_b
    return-object v0

    .line 167
    :cond_c
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_18

    .line 168
    new-instance v0, Lcom/koushikdutta/ion/ContextReference$ActivityContextReference;

    check-cast p0, Landroid/app/Activity;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/ContextReference$ActivityContextReference;-><init>(Landroid/app/Activity;)V

    goto :goto_b

    .line 170
    :cond_18
    new-instance v0, Lcom/koushikdutta/ion/ContextReference$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/ContextReference$1;-><init>(Landroid/content/Context;)V

    goto :goto_b
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Landroid/content/Context;
.end method
