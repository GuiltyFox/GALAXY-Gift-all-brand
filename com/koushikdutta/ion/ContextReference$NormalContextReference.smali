.class abstract Lcom/koushikdutta/ion/ContextReference$NormalContextReference;
.super Lcom/koushikdutta/ion/ContextReference;
.source "ContextReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ">",
        "Lcom/koushikdutta/ion/ContextReference",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/koushikdutta/ion/ContextReference;-><init>(Ljava/lang/Object;)V

    .line 26
    return-void
.end method


# virtual methods
.method public b()Landroid/content/Context;
    .registers 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/koushikdutta/ion/ContextReference$NormalContextReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method
